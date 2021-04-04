#define LED_OE  3
#define LED_LE  4
#define LED_CLK 5
#define LED_SDI 6

#define DELAY_TIME 1

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
  DisplayLED(0x0000);
}

void loop() 
{
  TestLED();
}

void TestLED()
{
  for(int i=0;i<16;i++)
  {
    DisplayLED(0x01<<i);
    Serial.println(0x01<<i,BIN);
    delay(20);
  }
}

void DisplayLED(unsigned long data)
{
  int i = 0;
  for(i=0;i<16;i++)
  {
    digitalWrite(LED_SDI,data>>i & 0x01);
    delay(1);
    digitalWrite(LED_CLK,HIGH);
    delay(1);
    digitalWrite(LED_CLK,LOW);
    delay(1);
  }
  digitalWrite(LED_LE,HIGH);
  delay(1);
  digitalWrite(LED_LE,LOW);
  delay(1);
}
