#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>

#define PORT  9999

int main()
{
  int n;
  int sockfd;
  char buf[1024];
  socklen_t clientlen;
  struct sockaddr_in serveraddr;
  struct sockaddr_in clientaddr;

  sockfd = socket(AF_INET, SOCK_DGRAM, 0);
  if (sockfd < 0)
    printf("ERROR opening socket\n");

  memset(&serveraddr, 0, sizeof(serveraddr));
  memset(&clientaddr, 0, sizeof(clientaddr));
  serveraddr.sin_family = AF_INET;
  serveraddr.sin_addr.s_addr = INADDR_ANY;
  serveraddr.sin_port = htons(PORT);

  if (bind(sockfd, (struct sockaddr *) &serveraddr, sizeof(serveraddr)) < 0)
    printf("ERROR on binding\n");

  while(1)
  {
    printf("Listening for the message from controller\n");
    n = recvfrom(sockfd, (char *)buf, 1024,
                MSG_WAITALL, ( struct sockaddr *) &clientaddr, &clientlen);
    printf("%s", buf);
    if (n < 0)
      printf("ERROR in recvfrom\n");
  }
  return 0;
}
