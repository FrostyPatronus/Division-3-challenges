#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot = Robot(4);

int main() {
    robot.setJointSpeeds(60, 100);
    robot.driveDistance(20);
    
    robot.setJointSpeeds(65, 100);
    robot.driveDistance(30);
    
    robot.setJointSpeeds(70, 100);
    robot.driveDistance(40);
    
    robot.setJointSpeeds(75, 100);
    robot.driveDistance(50);

    robot.setJointSpeeds(80, 100);
    robot.driveDistance(60);

}
