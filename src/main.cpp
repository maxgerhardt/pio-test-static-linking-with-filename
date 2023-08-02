#include <Arduino.h>
#include <example_lib.h>

void setup() {
    Serial.begin(115200);
}

void loop() {
    int ret = example_lib_function();
    Serial.println("Return value: " + String(ret));
    delay(1000);
}