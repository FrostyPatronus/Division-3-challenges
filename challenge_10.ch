#include "../Object/robot.ch"

void one();
void two();
void three();
void four();

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot1 = Robot(4);
Robot robot2 = Robot(4);
Robot robot3 = Robot(4);
Robot robot4 = Robot(4);

void one(){
    robot1.driveDistance(12);
}

void two(){
    robot1.driveDistanceNB(13);
    robot2.driveDistance(13);

}

void three(){
    robot3.turnRightNB();
    robot4.turnRight();
    
    robot3.driveDistanceNB(6);
    robot4.driveDistance(6);


}

void four() {
    // robot4.driveDistance(-8);
}


int main() {
    // one();
    // two();
    three();
    four();
}

