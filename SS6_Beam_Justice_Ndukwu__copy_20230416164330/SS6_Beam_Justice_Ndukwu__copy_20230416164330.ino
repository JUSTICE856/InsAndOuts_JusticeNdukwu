const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 4;
const int LED6 = 7;

const int buttonPin = 2;             

bool buttonState;                    

void setup()                
{          
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);

  pinMode(buttonPin, INPUT_PULLUP);
 
  Serial.begin(38400);                
}

void loop()                           
{
  buttonState = digitalRead(buttonPin);   
  delay(10);                              

  Serial.println(buttonState);            

  if (buttonState == LOW)                
  {
    digitalWrite(LED1, LOW);
  delay(3000);
  digitalWrite(LED1, LOW);
  delay(4000);
  digitalWrite(LED2, LOW);
  delay(200);
  digitalWrite(LED2, LOW);
  delay(50);
  digitalWrite(LED3, LOW);
  delay(300);
  digitalWrite(LED3, LOW);
  delay(4000);
  digitalWrite(LED4, LOW);
  delay(300);
  digitalWrite(LED4, LOW);
  delay(40);
  digitalWrite(LED5, LOW);
  delay(100);
  digitalWrite(LED5, LOW);
  delay(7000);
  analogWrite(LED6, LOW);
  delay(100);
  analogWrite(LED6, LOW);
  delay(1000);
  }
  else
  {
  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  digitalWrite(LED3, HIGH);
  digitalWrite(LED4, HIGH);
  digitalWrite(LED5, HIGH);
  digitalWrite(LED6, HIGH);

  }

}
