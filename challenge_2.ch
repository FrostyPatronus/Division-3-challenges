#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot = Robot(4);

void toStart(){
    robot.driveDistance(30);
    robot.turnLeft();
    robot.driveDistance(10);
}

void toX() {
    int coord;
    printf("\nX-COORDINATE: \n");
    scanf("%d", &coord);
    
    printf("\n Y-COORDINATE: \n");
    int waste;
    scanf("%d", &waste);

    
    robot.driveDistance(17 + coord);
    robot.turnRight();
}

void toY() {
    robot.driveDistance(36);
}

int main() {
    toStart();
    toX();
    toY();
}
