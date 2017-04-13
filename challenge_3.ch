#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot1 = Robot(1);
Robot robot2 = Robot(5);

int main () {
    robot1.driveDistanceNB(38);
    delaySeconds(6);
    robot2.driveDistance(15);
    robot2.turnLeft(110);
    robot2.driveDistance(24);
    robot2.turnLeft(110);
    robot2.driveDistance(20);
    
    robot2.turnRight();
    robot2.driveDistance(10);
    
    robot2.turnRight();
    robot2.driveDistance(15);
    
    robot2.turnRight();
    robot2.driveDistance(15);
    
    robot2.turnRight();
    robot2.driveDistance(15);
    robot2.turnRight(80);
    robot2.driveDistance(17);

}

