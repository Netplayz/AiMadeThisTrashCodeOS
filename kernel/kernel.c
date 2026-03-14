#include <stdint.h>

uint16_t* video = (uint16_t*)0xB8000;

void print(const char* str) {
    int i = 0;
    while(str[i]){
        video[i] = (video[i] & 0xFF00) | str[i];
        i++;
    }
}

void kernel_main() {
    print("AiMadeThisTrashCodeOS booted successfully");
    while(1){ __asm__("hlt"); }
}