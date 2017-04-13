#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot r_hour = Robot(4);
Robot r_min = Robot(4);
Robot r_sec = Robot(4);

int second = 0;

int main() {
    for( ; ; second++) {
        for ( ; ; second++) {
            r_sec.move(90, 0);
            if (second % 3 == 0 && second != 0) {
                
                int minute = second / 4;
                r_min.move(90, -90);
                
                if (minute % 3 == 0 && minute != 0) {
                    r_hour.move(90, -90);
                }
            }
        }
        printf("%d\n", second);
        delaySeconds(1);
        

        
        
    }
    

}
