#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot = Robot(4);

void start() {
    robot.driveDistance(10);
}

void earth() {
    robot.setJointSpeeds(140, 80);
    robot.driveDistance(16);
    robot.setSpeed(4);
}

void space() {
    robot.driveDistance(22);
}

void moon() {
    robot.setJointSpeeds(170, 80);
    robot.driveDistance(12);
    
    robot.setSpeed(4);
    robot.driveDistance(8);
}

int main () {
    start();
    earth();
    space();
    moon();
}
