#include "vga.h"

#define VGA_BASE 0xB8000 // vga 显存起始地址
#define VGA_SCREEN_WIDTH 80 // vga 屏幕宽度（可容纳字符数）
#define VGA_SCREEN_HEIGHT 25 // vga 屏幕高度

/*获取VGA指定位置的字符*/
unsigned char get_char(unsigned short int pos){
	unsigned char *videobuf = (unsigned char*)0xb8000;
	return videobuf[pos*2 + 0];
}

/*在VGA右下角输出当前时间*/
void setWallClock(int HH,int MM,int SS){
	unsigned char c;
	unsigned short int pos;

	c = (unsigned char)((HH / 10) + 48); //将HH十位数转换为字符形式存储在c字符中
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 8;  //向屏幕倒数第九位输出
	put_char2pos(c, 0x7, pos);

	c = (unsigned char)((HH % 10) + 48); //将HH个位数转换为字符形式存储在c字符中
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 7;  //向屏幕倒数第八位输出
	put_char2pos(c, 0x7, pos);

	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 6;
	put_char2pos(':', 0x7, pos);

	c = (unsigned char)((MM / 10) + 48); //将MM十位数转换为字符形式存储在c字符中
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 5;
	put_char2pos(c, 0x7, pos);

	c = (unsigned char)((MM % 10) + 48);
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 4; 
	put_char2pos(c, 0x7, pos);

	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 3;
	put_char2pos(':', 0x7, pos);

	c = (unsigned char)((SS / 10) + 48); 
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 2;
	put_char2pos(c, 0x7, pos);

	c = (unsigned char)((SS % 10) + 48); 
	pos = VGA_SCREEN_HEIGHT * VGA_SCREEN_WIDTH - 1; 
	put_char2pos(c, 0x7, pos);
}

void getWallClock(int *HH,int *MM,int *SS){
	unsigned short int pos;
	int H = 0, M = 0, S = 0;

	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 1;
	S = (int)get_char(pos) - 48;
	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 2;
	S = S + ((int)get_char(pos) - 48) * 10; //从VGA显存地址中读取S的数值

	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 4;
	M = (int)get_char(pos) - 48;
	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 5;
	M = M + ((int)get_char(pos) - 48) * 10; //从VGA显存地址中读取M的数值

	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 7;
	H = (int)get_char(pos) - 48;
	pos = VGA_SCREEN_HEIGHT*VGA_SCREEN_WIDTH - 8;
	H = H + ((int)get_char(pos) - 48) * 10; //从VGA显存地址中读取H的数值

	*HH = H;
	*MM = M;
	*SS = S;
}
