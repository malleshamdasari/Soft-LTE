/**
 *
 * \section COPYRIGHT
 *
 * Copyright 2013-2017 Software Radio Systems Limited
 *
 * \section LICENSE
 *
 * This file is part of srsLTE.
 *
 * srsUE is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version.
 *
 * srsUE is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * A copy of the GNU Affero General Public License can be found in
 * the LICENSE file in the top-level directory of this distribution
 * and at http://www.gnu.org/licenses/.
 *
 */

#include <iostream>
using namespace std;

static const int ADDR_FAMILY      = AF_INET;
static const int SOCK_TYPE        = SOCK_STREAM;
static const int PROTO            = IPPROTO_SCTP;

typedef struct mme_cntxt_ {
  int msg_type;
  int mme_port;
  int n_prob;
  int mnc;
  int mmc;
  //short mme_addr[4];
  //short gtpu_addr[4];
}mme_cntxt_t;
