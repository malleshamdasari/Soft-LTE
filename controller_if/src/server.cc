#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/sctp.h>
#include <arpa/inet.h>

#include "controller_if.h"

#include <sstream>
#include <iostream>

void *setup_mme(void *buf)
{
  unsigned char *temp = (unsigned char *)buf;
  mme_cntxt_t           *mme_cntxt;
  std::string mme_ip;
  
  mme_cntxt = (mme_cntxt_t *)temp;
  cout<<"msg_type and port: "<<mme_cntxt->msg_type<<"\t"<<mme_cntxt->mme_port<<"\n";
  cout<<"size of struct: "<<sizeof(mme_cntxt_t)<<"\n";
  temp = temp + sizeof(mme_cntxt_t);
  unsigned char t[14];
  memcpy(t, temp, 14);
  std::ostringstream buffer; 
  for(int i = 0; i < 14; i++)
    buffer << t[i];
  mme_ip = buffer.str();
  cout<<mme_ip<<"\n";

  return 0;
}

int main()
{  
  int                   i, n;
  int                   size;
  int                   sockfd;
  uint8_t               msg_type;
  unsigned char         buf[256];
  socklen_t             clientlen;
  mme_cntxt_t           *mme_cntxt;
  struct sockaddr_in    serveraddr;
  struct sockaddr_in    clientaddr;
  int                   thread_id = 0;
  int                   portno = 9998;
  pthread_t             mme_thread[10];

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0)
    printf("ERROR opening socket\n");

  memset(&serveraddr, 0, sizeof(serveraddr));
  memset(&clientaddr, 0, sizeof(clientaddr));
  serveraddr.sin_family = AF_INET;
  serveraddr.sin_addr.s_addr = INADDR_ANY;
  serveraddr.sin_port = htons(portno);

  if (bind(sockfd, (struct sockaddr *) &serveraddr, sizeof(serveraddr)) < 0)
    printf("ERROR on binding\n");

  size = sizeof(uint8_t)+sizeof(mme_cntxt_t);
  while(1)
  {
    cout<<"Listening for the message from controller_if\n";
    n = recvfrom(sockfd, buf, 256,
                MSG_WAITALL, ( struct sockaddr *) &clientaddr, &clientlen);
    if (n < 0)
      printf("ERROR in recvfrom\n");
    else
    {   
      cout<<"Message received with size: "<<n<<"\n";
      pthread_create(&mme_thread[thread_id], NULL, &setup_mme, (void *)buf);
      thread_id++;
    }
  }

  for (i=0; i<=thread_id; i++)
    pthread_cancel(mme_thread[thread_id]);
  return 0;
}
