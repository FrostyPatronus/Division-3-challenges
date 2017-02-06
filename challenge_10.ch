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
    robot1.driveForeverNB();
    robot2.onBump(two);
}

void two(){
    robot2.driveForeverNB();
    robot3.onBump(three);
}

void three(){
    robot1.holdJoints();
    robot2.holdJoints();
    
    // robot3.turnRight();
    // robot3.driveDistance(3);
}

void four() {
    robot4.turnRight(93);
    robot4.driveDistance(13);
    robot4.turnLeft(93);
    robot4.driveDistance(3);
    robot4.turnRight(93);
    
    robot4.driveDistance(20);
}


int main() {
    // robot1.connect("81ZL")
    one();
}

