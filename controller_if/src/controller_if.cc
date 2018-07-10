#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include <arpa/inet.h>

#include "controller_if.h"

#include <iostream>
using namespace std;

int send_mme_cntxt(char* argv[])
{
  int 			size;
  int 			sockfd;
  int 			bytes = 0;
  int 			serverlen;
  mme_cntxt_t 		mme_cntxt;
  struct sockaddr_in 	serveraddr;
  unsigned char			*msg=NULL;
  unsigned char *temp;

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0) 
    printf("ERROR opening socket");

  memset(&serveraddr, 0, sizeof(serveraddr));
  serveraddr.sin_family = AF_INET;
  serveraddr.sin_port = htons(atoi(argv[1]));
  serveraddr.sin_addr.s_addr = inet_addr(argv[2]);

  /* Prepare the mme setup message for the controller */
  mme_cntxt.msg_type = 1;
  mme_cntxt.n_prob = 1;
  mme_cntxt.mnc = 1;
  mme_cntxt.mmc = 1;
  mme_cntxt.mme_port = atoi(argv[3]);

  size = sizeof(mme_cntxt_t)+strlen(argv[4]);
  msg = (unsigned char *)malloc(size);
  
  temp  = msg;
  memcpy(temp, &mme_cntxt, sizeof(mme_cntxt_t));
  temp += sizeof(mme_cntxt_t);
  memcpy(temp, argv[4], strlen(argv[4]));
 
  printf("size of message: %d\n", size);

  bytes = sendto(sockfd, msg, size, 0, (struct sockaddr *)&serveraddr, sizeof(serveraddr));
  if (bytes < 0)
  { 
    printf("ERROR in sendto");
    return 0;
  }
  else
    printf("Triggering the controller to instantiate connection between the eNodeB and new MME: %d\n",bytes);

  //if (msg != NULL)
  //  free(msg);
}

int main(int argc, char* argv[])
{
  if (argc < 5)
  {
     printf("Usage: ./controller controller_port controller_ip mme_port mme_ip\n");
     return 0;
  }

  send_mme_cntxt(argv);

  return 0;
}

// End of file
