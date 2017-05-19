 /*
 **************************************************************************
 *                                                                        *
 *                 ____                ___ _   _____                      *
 *                / __ \___  ___ ___  / _ | | / / _ \____                 *
 *               / /_/ / _ \/ -_) _ \/ __ | |/ / , _/ __/                 *
 *               \____/ .__/\__/_//_/_/ |_|___/_/|_|\__/                  *
 *                   /_/                                                  *
 *                                                                        *
 *              This file is part of the OpenAVRc project.                *
 *                                                                        *
 *                         Based on code(s) named :                       *
 *             OpenTx - https://github.com/opentx/opentx                  *
 *             Deviation - https://www.deviationtx.com/                   *
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


//

#ifndef _INTERFACE_H_
#define _INTERFACE_H_

#include "misc.h"

#include "ppm_bit_bang.cpp"
#include "ppm_hw_switching.cpp"

#ifdef PROTO_HAS_A7105
#include "iface_a7105.h"
#endif

#ifdef PROTO_HAS_CYRF6936
#include "iface_cyrf6936.h"
#include "cyrf6936.c"
#include "DEVO_cyrf6936.c"
#include "DSM_cyrf6936.c"
#endif

#ifdef PROTO_HAS_CC2500
#include "iface_cc2500.h"
#include "cc2500.c"
#include "FRSKYV_cc2500.c"
#include "FRSKYD_cc2500.c"
#include "skyartec_cc2500.c"
#endif

#ifdef PROTO_HAS_NRF24L01
#include "iface_nrf24l01.h"
#endif

#endif // _INTERFACE_H_