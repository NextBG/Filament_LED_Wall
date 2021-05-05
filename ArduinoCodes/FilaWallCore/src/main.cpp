#define POE 9  /* OE pin */
#define PLE 6  /* LE pin */
#define PCLK 3 /* Clock pin */
#define PSDI 5 /* SDI pin */
#define POV 8  /* Overflow, connect to last output */
typedef unsigned short u16;
typedef unsigned char u8;
#include <Arduino.h>

// MARK: - Globals

static u16 LED_Count = 48;
static u8 brightness = 255;
static const unsigned DEFAULT_COUNT = 0xFFFF + 1;

// MARK: - HAL Methods

void LED_SetBrightness(u8 new_value) {
    brightness = new_value;
    analogWrite(POE, 255 - new_value);
}

void LED_Push(u16 data, u16 length = 16) {
    if (length > 16) {
        Serial.println("Fatal: length > 16");
        exit(-1);
    }
    for (u16 digit = 0; digit < length; ++digit) {
        const bool state = (bool)(data & (1 << digit));
        digitalWrite(PSDI, state);
        digitalWrite(PCLK, 1);
        digitalWrite(PCLK, 0);
        delayMicroseconds(1);
    }
}

void LED_Show(bool show, u8 _brightness = brightness) {
    if (show) {
        analogWrite(POE, 255 - _brightness);
        digitalWrite(PLE, 1);
        delayMicroseconds(1);
        digitalWrite(PLE, 0);
        delayMicroseconds(1);
    } else {
        digitalWrite(POE, 1);
    }
}

void LED_PushAndShow(u16 data, u16 length = 16) {
    LED_Push(data, length);
    LED_Show(true);
}

void LED_Clear() {
    for (u8 i = 0; i <= LED_Count / 16; ++i) {
        LED_Push(0);
    }
}

void LED_Init() {
    digitalWrite(POE, 1);
    digitalWrite(PLE, 0);
    digitalWrite(PSDI, 1);
    digitalWrite(PCLK, 0);
    delay(1);
    LED_Push(1, 1);
    for (u16 i = 1; i <= 16; ++i) {
        LED_Push(1, 1);
        if (digitalRead(POV)) {
            LED_Count = i + 1;
            break;
        }
    }
    Serial.print("Init done with count ");
    Serial.println(LED_Count);
}

// MARK: - Main

void bootAnimation1() {
    LED_Push(0x0660);
    LED_SetBrightness(1);
    LED_Show(true);
    for (u8 value = 1; value < 255; ++value) {
        LED_SetBrightness(value);
        delay(1);
    }
    for (u8 value = 255; value > 1; --value) {
        LED_SetBrightness(value);
        delay(2);
    }

    LED_Push(0x6996);
    LED_SetBrightness(1);
    LED_Show(true);
    for (u8 value = 1; value < 255; ++value) {
        LED_SetBrightness(value);
        delay(1);
    }
    for (u8 value = 255; value > 1; --value) {
        LED_SetBrightness(value);
        delay(2);
    }

    LED_Push(0x9009);
    LED_SetBrightness(1);
    LED_Show(true);
    for (u8 value = 1; value < 255; ++value) {
        LED_SetBrightness(value);
        delay(1);
    }
    for (u8 value = 255; value > 1; --value) {
        LED_SetBrightness(value);
        delay(2);
    }

    LED_Push(0x0000);
    LED_Show(false);
}

void bootAnimation2() {
    LED_SetBrightness(50);
    const int interval = 60;
    for (int i = 0; i < 16; ++i) {
        LED_PushAndShow(0x6000);
        delay(interval);
        LED_PushAndShow(0x2100);
        delay(interval);
        LED_PushAndShow(0x0110);
        delay(interval);
        LED_PushAndShow(0x0012);
        delay(interval);
        LED_PushAndShow(0x0006);
        delay(interval);
        LED_PushAndShow(0x0084);
        delay(interval);
        LED_PushAndShow(0x0880);
        delay(interval);
        LED_PushAndShow(0x4800);
        delay(interval);
    }
    LED_Push(0x0000);
    LED_Show(false);
}

void animation3_Load() {
    LED_SetBrightness(40);
    const int interval = 100;

    LED_Push(0x4800);
    LED_Push(0x0);
    LED_PushAndShow(0x0);
    delay(interval);

    LED_Push(0x0880);
    LED_Push(0x0);
    LED_PushAndShow(0x0880);
    delay(interval);

    LED_Push(0x0084);
    LED_Push(0x0);
    LED_PushAndShow(0x0CC0);
    delay(interval);

    LED_Push(0x0006);
    LED_Push(0x0);
    LED_PushAndShow(0x0EE0);
    delay(interval);

    LED_Push(0x0012);
    LED_Push(0x0);
    LED_PushAndShow(0x0FF0);
    delay(interval);

    LED_Push(0x0110);
    LED_Push(0x880);
    LED_PushAndShow(0x0FF0);
    delay(interval);

    LED_Push(0x2100);
    LED_Push(0x0CC0);
    LED_PushAndShow(0x0FF0);
    delay(interval);

    LED_Push(0x6000);
    LED_Push(0x0EE0);
    LED_PushAndShow(0x0FF0);
    delay(interval);

    LED_Push(0x4800);
    LED_Push(0x0FF0);
    LED_PushAndShow(0x0FF0);
    delay(interval);

    return;
    delay(800);
    LED_Show(false);
    LED_Push(0x0000);
    LED_Push(0x0000);
    LED_Push(0x0000);
}

void bootAnimation3(u16 count = LED_Count, u8 len = 3) {
    LED_Clear();
    for (u16 i = 0; i < len; ++i) {
        LED_PushAndShow(1, 1);
        delay(150);
    }
    for (u16 i = 0; i < count; ++i) {
        LED_PushAndShow(0, 1);
        delay(150);
    }
}

void setup() {
    pinMode(POE, OUTPUT);
    pinMode(PLE, OUTPUT);
    pinMode(PCLK, OUTPUT);
    pinMode(PSDI, OUTPUT);
    pinMode(POV, INPUT);
    Serial.begin(115200);
    LED_PushAndShow(0xFFFF);
    delay(200);
    LED_Clear();
    LED_Init();
    bootAnimation1();
    bootAnimation1();
    bootAnimation1();
    bootAnimation2();
    bootAnimation3();
    while (1) {
        animation3_Load();
    }
}

void handler(u8 cmd, u16 val) {
    if (cmd == 1) { // Display
        // 00000000 00010000 BBBBBBBB BBBBBBBB
        // u16 _length = (u16)((unsigned)(val / 1 << 16));
        // u16 _data = val & 0xFFFF;
        LED_Push(val, 16);
        LED_Show(true);
    } else if (cmd == 2) { // Brightness
        LED_SetBrightness(val);
    }
}

void loop() {
    // LED_SetBrightness(10);
    // LED_Show(false); //LED_PushAndShow(0);
    // delay(1000);
    // LED_PushAndShow(0xFFFF);
    // delay(1000);
    // return;
    if (Serial.available()) {
        switch(Serial.read()) {
        case 'C': //Clear
            //
            break;
        case 'S': //Set
            break;
        case 'U': //Update
            break;
        case 'T': //Transmit
            break;
        case 'P': //Preset
            break;
        default:
            //Clear serial buffer
        }

        if (Serial.read() == 'G') {
            u8 command = Serial.parseInt();
            unsigned int parameter = Serial.parseInt();
            // Handle the intent
            handler(command, parameter);
        }
        // Clear buffer
        while (Serial.available()) {
            Serial.read();
        }
    }
}