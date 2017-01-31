#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot1 = Robot(4);
Robot robot2 = Robot(4);
Robot robot3 = Robot(4);

// robot1: cue
// robot2: left
// robot3: right

void bumpHandler() {
    robot1.holdJoints();
    robot2.driveDistanceNB(23);
    robot3.driveDistance(23);
}

int main(){
    robot1.driveDistanceNB(100);
    robot2.onBump(bumpHandler);
}
