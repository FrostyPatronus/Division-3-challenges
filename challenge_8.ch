#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot = Robot(4);

int main() {
    double a;
    printf("--- INPUT A ---\n");
    scanf("%lf", &a);
    
    double b;
    printf("\n--- INPUT B ---\n");
    scanf("%lf", &b);
    
    double x = (-100 + sqrt(10000 - 4*(a * b)*(-840))) / (2 * a * b);
    printf("\nX is: %lf\n", x);
    
    robot.driveDistance(x + 1);
    
    robot.turnLeft();
    
    double y = (84 - x) / b;
    
    printf("\nY is: %lf\n", y);
    robot.driveDistance(y - 2);

}
