#include <sys/types.h>
#include <sys/socket.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <arpa/inet.h>
#include "DEFAULT_PORT.h"
    
#define SIZE 4096
    
int main(){
    int client_socket = socket(AF_INET, SOCK_STREAM, 0); //Set up a socket
    if(client_socket == -1){
        perror("socket");
        return -1;
    }

    struct sockaddr_in addr;
    memset(&addr, 0, sizeof(addr));
    
    addr.sin_family = AF_INET;
    addr.sin_port = htons(DEFAULT_PORT);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    inet_aton("127.0.0.1", &(addr.sin_addr));
    
    int addrlen = sizeof(addr);
    int listen_socket = connect(client_socket, (struct sockaddr *)&addr, addrlen);  //Connect to the server
    if(listen_socket == -1){
        perror("connect");
        return -1;
    }
    
    printf("Success to connect server!\n");

    char buf[SIZE];

    if(recv(client_socket, buf, SIZE, 0) == -1){
        perror("recv");
        return -1;
    }
    
    printf("synchronization time: %s\n", buf);

    close(listen_socket);
    
    return 0;
}