#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot = Robot(2);

int main() {
    //robot.driveDistance(10);
    
    int i;
    for(i = 0; i < 5; i++) {
        robot.move(-45, -22);
        robot.move(22, 45);

    }        
}

