#include "../../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot2 = Robot(4);
Robot robot4 = Robot(4);
Robot robot6 = Robot(4);

int main() {
    robot2.setLEDColor("green");
        robot4.getRobot()->setLEDColor("purple");

        robot6.getRobot()->setLEDColor("purple");

}
