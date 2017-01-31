#include "../Object/robot.ch"

Robot::defaultR = 1.75;
Robot::defaultTW = 3.69;

Robot robot = Robot(4);

void turnA() {
    robot.moveTo(20, 20);
}

void turnB() {
    robot.moveTo(60, 60);
}

void turnD() {
    robot.moveTo(120, 120);
}

void turnE() {
    robot.moveTo(160, 160);
}

void turnF() {
    robot.moveTo(210, 210);
}

void turnH() {
    robot.moveTo(260, 260);
}

void turnO() {
    robot.moveTo(305, 305);
}

void turnS() {
    robot.moveTo(350, 350);
}

void turnTo(char letter) {
    switch(letter) {
        case 's':
            turnS();
            break;
        case 'o':
            turnO();
            break;
        case 'h':
            turnH();
            break;
        case 'f':
            turnF();
            break;
        case 'e':
            turnE();
            break;
        case 'd':
            turnD();
            break;
        case 'b':
            turnB();
            break;
        case 'a':
            turnA();
            break;
        
    }
}

int main(){
    char letter;
    string_t str;
    scanf("%s",  &str);
        
    int i;
    for(i = 0; i < strlen(str); i++){
        letter = strgetc(str, i);
        turnTo(letter);
        delaySeconds(1);
    }
}
