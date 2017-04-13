#include "../../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot = Robot(4);

int main() {
    robot.driveDistance(15);
    robot.driveSpeedRatio(1, 1.9, 75, 18);
    
    robot.driveDistance(16);
    robot.driveSpeedRatio(1.9, 1, 75, 28);
}
