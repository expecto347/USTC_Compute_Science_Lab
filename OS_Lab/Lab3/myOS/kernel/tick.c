#include "wallClock.h"
int system_ticks;
int HH=0,MM=0,SS=0; //初始化为零

void tick(void){
	system_ticks++;
	if(system_ticks%100 == 0){
		system_ticks == 0;
		if(SS < 59){
			SS++;
		}
		else if(SS == 59){
				if(MM < 59){
					MM++;
					SS = 0;
				}
				else if(MM == 59){
					if(HH < 23){
						HH++;
						MM = 0;
						SS = 0;
						}
					else if(HH == 23){
						HH = 0;
						MM = 0;
						SS = 0;
					}
				}
		}
	}
	
	setWallClock(HH,MM,SS);
	return;
}

