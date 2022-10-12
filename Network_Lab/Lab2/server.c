#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <time.h>
#include "DEFAULT_PORT.h"

#define MAXLINE 4096

int create_socket();
int wait_client(int listen_socket);
void send_time(int listen_socket, int client_socket);


//Sever
int main(int argc, char **argv){
    int listen_socket = create_socket();

    int p = fork();
    if(p == -1){
        printf("创建子进程失败\n");
    }
    else if(p > 0){
        char c;
        c = getchar();
        if(c == 'q'){
            printf("再见！\n");
            close(listen_socket);
            exit(0);
        }
    }
    else{
        while(1){
            int client_socket = wait_client(listen_socket); //多进程服务器，可以创建子进程来处理，父进程负责监听。
            int pid = fork();
            if(pid == -1){
                perror("fork");
                break;
            }
            if(pid > 0){ //父进程只负责监听
                close(client_socket);
                continue;
            }
            if(pid == 0){
                close(listen_socket);
                send_time(listen_socket, client_socket);
                break;
            }
        }
    }
}

int create_socket(){
    int sockfd;
    struct sockaddr_in servaddr;

    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0){
        printf("create socket error: %s(errno: %d)\n", strerror(errno),errno);
        exit(0);
    }

    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(DEFAULT_PORT);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    if(bind(sockfd,(struct sockaddr*)&servaddr,sizeof(servaddr))==-1){
        printf("bind socket error:%s(errno:%d)\n",strerror(errno),errno);
        exit(0);
    }

    //Start to listen the socket
    if(listen(sockfd,10)==-1){
        printf("listen socket error:%s(errno:%d)\n",strerror(errno),errno);
        exit(0);
    }

    printf("===============waiting for client's request===============\n");
    
    return sockfd;
}

int wait_client(int listen_socket){
    int connfd;
    struct sockaddr_in cliaddr;
    socklen_t clilen;
    char buff[MAXLINE];
    int n;

    while(1){
        clilen = sizeof(cliaddr);
        if((connfd = accept(listen_socket, (struct sockaddr*)&cliaddr, &clilen))==-1){
            printf("accept socket error:%s(errno:%d)\n",strerror(errno),errno);
            continue;
        }

        //print the client's information
        printf("Success to connect with client:%s\n",inet_ntoa(cliaddr.sin_addr));
        return connfd;
    }
}

void send_time(int listen_socket, int client_socket){
    char *buff;
    int n;
    time_t ticks;

    time(&ticks);
    buff = ctime(&ticks);

    printf("Send time to client:%s\n",buff);
    if(send(client_socket, buff, strlen(buff) + 1, 0) == -1) perror("send error");
    close(client_socket);
}
