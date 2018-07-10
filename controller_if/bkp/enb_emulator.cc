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

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include <arpa/inet.h>

#include <iostream>
using namespace std;

#include "enb_emulator.h"

void get_mme_cntxt(mme_cntxt_t *mme_cntxt)
{
  mme_cntxt->mme_addr = "135.207.129.133";
  //mme_cntxt->mme_addr = "204.178.7.45";
 // mme_cntxt->mme_addr = "127.0.1.100";
  mme_cntxt->mme_port = 36412;
}

int connect_mme(mme_cntxt_t *mme_cntxt, char* argv[])
{
  int socket_fd = 0;
  struct sockaddr_in mme_addr;

  printf("Connecting to MME %s:%d\n", mme_cntxt->mme_addr.c_str(), mme_cntxt->mme_port);

  if((socket_fd = socket(ADDR_FAMILY, SOCK_TYPE, PROTO)) == -1) {
    printf("Failed to create S1AP socket\n");
    return false;
  }

  // Connect to the MME address
  memset(&mme_addr, 0, sizeof(struct sockaddr_in));
  mme_addr.sin_family = ADDR_FAMILY;
  mme_addr.sin_port = htons(mme_cntxt->mme_port);
  //if(inet_pton(AF_INET, mme_cntxt->mme_addr.c_str(), &(mme_addr.sin_addr)) != 1) {
  if(inet_pton(AF_INET, argv[1], &(mme_addr.sin_addr)) != 1) {
    printf("Error converting IP address (%s) to sockaddr_in structure\n", mme_cntxt->mme_addr.c_str());
    return false;
  }

  if(connect(socket_fd, (struct sockaddr*)&mme_addr, sizeof(mme_addr)) == -1) {
    printf("Failed to establish socket connection to MME\n");
    return false;
  }

  printf("SCTP socket established with MME\n");
  return true;
}

int main(int argc, char* argv[])
{
  mme_cntxt_t mme_cntxt;

  get_mme_cntxt(&mme_cntxt);
  connect_mme(&mme_cntxt, argv);

  return 0;
}
