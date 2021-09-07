// This sketch makes a GPIO up and down as fast as the machine can do
// C language

#include <stdio.h>
#include <wiringPi.h>

int main(void){
  const int gpio=0;
  // Initialize wiringPi 
  wiringPiSetup();

  // Set gpio like output mode
  pinMode(gpio,OUTPUT);
  printf("Flashing GPIO 17 in C");

  // Infinity loop
  while(1){
    digitalWrite(gpio,HIGH);
    digitalWrite(gpio,LOW);
  }
}


