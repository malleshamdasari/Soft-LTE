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

#define PORT 9998

int main(int argc, char* argv[])
{
  int bytes = 0;
  int sockfd;
  int serverlen;
  char *hello = "Hello from client";
  struct sockaddr_in serveraddr;

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0) 
    printf("ERROR opening socket");

  memset(&serveraddr, 0, sizeof(serveraddr));
  serveraddr.sin_family = AF_INET;
  serveraddr.sin_port = htons(PORT);
  serveraddr.sin_addr.s_addr = inet_addr(argv[1]);
 
  bytes = sendto(sockfd, (const char *)hello, strlen(hello), 0, (struct sockaddr *)&serveraddr, sizeof(serveraddr));
  if (bytes < 0) 
    printf("ERROR in sendto");

  close(sockfd);
  return 0;
}

// End of file
