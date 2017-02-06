#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;
    
Robot robot1 = Robot(3);
Robot robot2 = Robot(3);

array string_t colors[8][3] = {
    {"red", "blue", "purple"},
    {"yellow", "red", "orange"},
    {"red", "green", "yellow"},
    {"red", "blue", "magenta"},
    {"green", "blue", "cyan"},
    {"yellow", "magenta", "red"},
    {"cyan", "magenta", "blue"},
    {"yellow", "cyan", "green"}
};

int main(){
    int player = 1;
    
    int i;
    for (i = 0; 1;) {        
        string_t color1 = colors[i][0];
        string_t color2 = colors[i][1];
        string_t answer = colors[i][2];
        
        printf("\n");
        printf("--- PLAYER %d ---\n", player);
        printf("What is the combination between %s and %s? \n", color1, color2);
        (*robot1.getRobot()).setLEDColor(color1);
        (*robot2.getRobot()).setLEDColor(color2);
        
        string_t guess;
        scanf("%s", &guess);
        
        if (guess == answer){
            printf("Player %d gets a point!\n", player);
            
            if (player == 1) {
                robot1.driveDistance(5);
            } else {
                robot2.driveDistance(5);
            }
            
            i++;
        } else {
            printf("Wrong guess!\n");
            if (player == 1)
                player = 2;
            else
                player = 1;

        }
    }
}
