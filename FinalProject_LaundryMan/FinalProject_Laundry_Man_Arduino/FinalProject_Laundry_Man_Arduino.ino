int button1Pin = 2; // Pin for button 1
int button2Pin = 3; // Pin for button 2
int xValue = 0 ; // read value of the X axis	
int yValue = 0 ; // read value of the Y axis	
int bValue = 0 ; // value of the button reading	
const int joyXPin = A0;  // Joystick X-axis analog pin
const int joyYPin = A1;  // Joystick Y-axis analog pin
byte val; // stores data received from serial port

void setup() {
  
  Serial.begin(9600); // Initialize Serial communication
  pinMode(8,INPUT) ; // Configure Pin 2 as input
	digitalWrite(8,HIGH);	
  pinMode(button1Pin, INPUT_PULLUP); 
  pinMode(button2Pin, INPUT_PULLUP); 
}

void loop() {
  int button1State = digitalRead(button1Pin);
  int button2State = digitalRead(button2Pin);
   if (button1State == LOW) {
    Serial.write('L');
    delay(800); 
  }

  // Check if button 2 is pressed
  if (button2State == LOW) {
    Serial.write('R');
    delay(800); 
  }


  xValue = analogRead(A0);	
	yValue = analogRead(A1);	

	// Read the logic value on pin 2	
	bValue = digitalRead(8);	

	// We display our data separated by a comma	
	Serial.print(xValue,DEC);
	Serial.print(",");
	Serial.print(yValue,DEC);
	Serial.print(",");
	Serial.print(!bValue);


	Serial.print("\n");

	
	delay(10);	
  
}
  
 
 