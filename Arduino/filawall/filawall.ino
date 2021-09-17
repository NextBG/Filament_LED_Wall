#define LED_OE  9
#define LED_LE  6
#define LED_CLK 3
#define LED_SDI 5

void setup() {
  Serial.begin(115200);
  
  pinMode(LED_OE,OUTPUT);
  pinMode(LED_LE,OUTPUT);
  pinMode(LED_CLK,OUTPUT);
  pinMode(LED_SDI,OUTPUT);

  digitalWrite(LED_OE,HIGH);
  digitalWrite(LED_LE,LOW);
  digitalWrite(LED_SDI,HIGH);
  digitalWrite(LED_CLK,LOW);
  Serial.println("Init done!");

  digitalWrite(LED_OE,LOW);
}

void loop() 
{
  // Read command from serial port
  while (Serial.available() > 0) {
    int cmd = Serial.parseInt();
    if (Serial.read() == '\n')
      readCmd(cmd);
  }
}

void readCmd(unsigned int cmd) {
  switch(cmd) {
    case 0: // Black Pixel
      digitalWrite(LED_SDI,1);
      digitalWrite(LED_CLK,HIGH);
      digitalWrite(LED_CLK,LOW);
      break;
    case 1: // White pixel
      digitalWrite(LED_SDI,0);
      digitalWrite(LED_CLK,HIGH);
      digitalWrite(LED_CLK,LOW);
      break;
    case 2: // Output
      digitalWrite(LED_LE,HIGH);
      digitalWrite(LED_LE,LOW);
      break;
  }
}
