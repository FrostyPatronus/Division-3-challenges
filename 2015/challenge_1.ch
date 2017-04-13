void onBump1();
void onBump2();

#include "../../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot1 = Robot(4);
Robot robot2 = Robot(4);

void onBump1() {
    robot2.holdJoints();
    robot1.driveDistance(-10);
    robot1.driveForeverNB();
    robot2.onBump(onBump2);
}

void onBump2() {
    robot1.holdJoints();
    robot2.driveDistance(10);
    robot2.driveDistanceNB(-100);
    robot1.onBump(onBump1);
}

int main() {
    robot1.driveForeverNB();
    robot2.onBump(onBump2);
}
