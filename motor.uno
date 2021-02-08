int data = 0 ;
int inputPin = A0;
int motorPin1 = 1; //motor transistor is connected to pin 3
int motorPin2 = 2; //motor transistor is connected to pin 3
int motorPin3 = 3; //motor transistor is connected to pin 3
int motorPin4 = 4; //motor transistor is connected to pin 3
int val1 = 1;
int val2 = 1;
int val3 = 1;
int val4 = 1;
int valX=0;
long randNumber;
int ledPin=9;
int buttonPin = 11;


void setup()
{
    Serial.begin(9600);
    pinMode(inputPin,INPUT);
    pinMode(motorPin1, OUTPUT);
    pinMode(motorPin2, OUTPUT);
    pinMode(motorPin3, OUTPUT);
    pinMode(motorPin4, OUTPUT);
    randomSeed(analogRead(0));
    pinMode(ledPin,OUTPUT);
    pinMode(buttonPin,INPUT);

}

void loop()
{
    if (digitalRead(buttonPin)==HIGH){
        data = analogRead(A0);
        val1 = random(data,2000) ;
        val2 = random(data,2000) ;
        val3 = random(data,2000) ;
        val4 = random(data,2000) ;
        valX = random(100,500) ;
        Serial.println(data);
        digitalWrite(motorPin1, HIGH); //vibrate
        delay(val1);  // delay one second
        digitalWrite(motorPin1, LOW);  //stop vibrating
        delay(valX); //wait 50 seconds.

        digitalWrite(motorPin2, HIGH); //vibrate
        delay(val2);  // delay one second
        digitalWrite(motorPin2, LOW);  //stop vibrating
        valX = random(100,500) ;

        delay(valX); //wait 50 seconds.
        
        digitalWrite(motorPin3, HIGH); //vibrate
        delay(val3);  // delay one second
        digitalWrite(motorPin3, LOW);  //stop vibrating
        valX = random(100,500) ;

        delay(valX); //wait 50 seconds.


        digitalWrite(motorPin4, HIGH); //vibrate
        delay(val4);  // delay one second
        digitalWrite(motorPin4, LOW);  //stop vibrating
        valX = random(100,500) ;

        delay(valX); //wait 50 seconds.
        data = 0;
    } else {
            digitalWrite(motorPin1, LOW); //vibrate
            digitalWrite(motorPin2, LOW); //vibrate
            digitalWrite(motorPin3, LOW); //vibrate
            digitalWrite(motorPin4, LOW); //vibrate
            delay(100);
    }
}
