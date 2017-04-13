#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robotO = Robot(4);
Robot robotI = Robot(4);

double ratio1 = 0.3;
double ratio2 = 0.6;
double ratio3 = 0.1;

int main () {
    robotO.setJointSpeeds(4.5*ratio1, 3*ratio1);
    robotO.driveDistanceNB(40);
    
    robotI.setJointSpeeds(5*ratio2, 2.8*ratio2);
    robotI.driveDistance(20);
    
    delaySeconds(2);
    
    robotI.setJointSpeeds(5*ratio3, 1*ratio3);
    robotI.driveDistance(20);
}
