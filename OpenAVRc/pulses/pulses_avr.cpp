/*
**************************************************************************
*                                                                        *
*              This file is part of the OpenAVRc project.                *
*                                                                        *
*                         Based on code named                            *
*             OpenTx - https://github.com/opentx/opentx                  *
*                                                                        *
*                Only AVR code here for visibility ;-)                   *
*                                                                        *
*   OpenAVRc is free software: you can redistribute it and/or modify     *
*   it under the terms of the GNU General Public License as published by *
*   the Free Software Foundation, either version 2 of the License, or    *
*   (at your option) any later version.                                  *
*                                                                        *
*   OpenAVRc is distributed in the hope that it will be useful,          *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of       *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
*   GNU General Public License for more details.                         *
*                                                                        *
*       License GPLv2: http://www.gnu.org/licenses/gpl-2.0.html          *
*                                                                        *
**************************************************************************
*/

// *** WARNING THIS IS EXPERIMENTAL ***

#include "../OpenAVRc.h"
#include "../../protocol/common.h"
#include "../../protocol/interface.h"
#include "../../protocol/misc.c"

uint16_t nextMixerEndTime = 0;
uint8_t s_current_protocol[1] = { 255 };
uint8_t s_pulses_paused = 0;
uint8_t dt;
uint16_t B3_comp_value;
#define SETUP_PULSES_DURATION 1000 // 500us


void startPulses()
{
PROTO_Cmds = PPM_SWITCHING_Cmds;
// PROTO_Cmds = PPM_BB_Cmds;
// PROTO_Cmds =  FRSKY1WAY_Cmds;
  PROTO_Cmds(PROTOCMD_INIT);
}

#define PULSES_SIZE 144
uint8_t pulses2MHz[PULSES_SIZE] = {0}; // TODO check this length, pulled from er9x, perhaps too big.
uint8_t * pulses2MHzRPtr = pulses2MHz;


ISR(TIMER1_COMPA_vect) // Protocol Callback ISR.
{
  if(full_loops--);
  else {
    uint16_t half_us = timer_callback(); // e.g. flysky_cb()
    if(! half_us) {
      PROTO_Cmds(PROTOCMD_DEINIT);
      return;
    }
    timer_counts = HALF_MICRO_SEC_COUNTS(half_us);
    full_loops = timer_counts >> 16;
    OCR1A += (timer_counts & 0xFFFF);
  }

  if (dt > g_tmr1Latency_max) g_tmr1Latency_max = dt;
  if (dt < g_tmr1Latency_min) g_tmr1Latency_min = dt;
}


void setupPulsesPPM(uint8_t proto)
{
  // Total frame length is a fixed 22.5msec (more than 9 channels is non-standard and requires this to be extended.)
  // Each channel's pulse is 0.7 to 1.7ms long, with a 0.3ms stop tail, making each compelte cycle 1 to 2ms.

  int16_t PPM_range = g_model.extendedLimits ? 640*2 : 512*2;   //range of 0.7..1.7msec

  uint16_t *ptr = (proto == PROTO_PPM ? (uint16_t *)pulses2MHz : (uint16_t *) &pulses2MHz[PULSES_SIZE/2]);

  //The pulse ISR is 2mhz that's why everything is multiplied by 2
  uint8_t p = (proto == PROTO_PPM16 ? 16 : 8) + (g_model.ppmNCH * 2); //Channels *2
  uint16_t q = (g_model.ppmDelay*50+300)*2; // Stoplen *2
  int32_t rest = 22500u*2 - q;

  rest += (int32_t(g_model.ppmFrameLength))*1000;
  for (uint8_t i=(proto==PROTO_PPM16) ? p-8 : 0; i<p; i++) {
    int16_t v = limit((int16_t)-PPM_range, channelOutputs[i], (int16_t)PPM_range) + 2*PPM_CH_CENTER(i);
    rest -= v;
    *ptr++ = q;
    *ptr++ = v - q; // total pulse width includes stop phase
  }

  *ptr++ = q;
  if (rest > 65535) rest = 65535; // prevents overflows.
  if (rest < 9000)  rest = 9000;

  if (proto == PROTO_PPM) {
    *ptr++ = rest - SETUP_PULSES_DURATION;
    pulses2MHzRPtr = pulses2MHz;
  } else {
    *ptr++ = rest;
    B3_comp_value = rest - SETUP_PULSES_DURATION; // 500us before end of sync pulse.
  }

  *ptr = 0;
}



#include "../../protocol/ppm_hw_switching.cpp"
//#include "ppm_bit_bang.cpp"
//#include "frsky1way_cc2500_rick.cpp"

