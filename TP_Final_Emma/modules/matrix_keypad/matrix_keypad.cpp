//=====[Libraries]=============================================================

#include "mbed.h"
#include "arm_book_lib.h"

#include "matrix_keypad.h"

#include "date_and_time.h"

//=====[Declaration of private defines]======================================

#define MATRIX_KEYPAD_NUMBER_OF_ROWS    4
#define MATRIX_KEYPAD_NUMBER_OF_COLS    4
#define DEBOUNCE_KEY_TIME_MS        40

Serial uartUsb1(USBTX, USBRX);

//=====[Declaration of private data types]=====================================

typedef enum {
    MATRIX_KEYPAD_SCANNING,
    MATRIX_KEYPAD_DEBOUNCE,
    MATRIX_KEYPAD_KEY_HOLD_PRESSED
} matrixKeypadState_t;

//=====[Declaration and initialization of public global objects]===============
//Filas
DigitalIn   FA  (PB_3);
DigitalIn   FB  (PB_5);
DigitalIn   FC  (PC_7);
DigitalIn   FD  (PA_15);
//Columnas
DigitalOut  C1  (PB_12);
DigitalOut  C2  (PB_13);
DigitalOut  C3  (PB_15);
DigitalOut  C4  (PC_6);

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

//=====[Declaration and initialization of private global variables]============

static matrixKeypadState_t matrixKeypadState;
static int timeIncrement_ms = 0;

//=====[Declarations (prototypes) of private functions]========================

static int miTecladoScan();
static void matrixKeypadReset();

//=====[Implementations of public functions]===================================

void matrixKeypadInit( int updateTime_ms )
{
    FA.mode(PullUp);
    FB.mode(PullUp);
    FC.mode(PullUp);
    FD.mode(PullUp);
    C1 = OFF;
    C2 = OFF;
    C3 = OFF;
    C4 = OFF;
    
    timeIncrement_ms = updateTime_ms;
    matrixKeypadState = MATRIX_KEYPAD_SCANNING;
}

char matrixKeypadUpdate()
{
    static int accumulatedDebounceMatrixKeypadTime = 0;
    static char matrixKeypadLastKeyPressed = '\0';

    char keyDetected = '\0';

    static int prevKeyPressed;
    keyDetected = miTecladoScan();
    if ( ( keyDetected != 0 )  ) {
        prevKeyPressed = keyDetected;
    }
    
    return keyDetected;
}

//=====[Implementations of private functions]==================================
int miTecladoScan()
{
    char miChar = 0;
    // ---------------- FILA A ---------------- //
    if(!FA)          
    {
        delay(2);
        if(!FA)
        {
            // ----- Columna 1 ------- //
            C1 = 0;    C2 = 1;     C3 = 1;  C4 = 1;
            delay(2);
            if(!FA)      miChar = '1';
            else
            {
                // ----- Columna 2 ------- //
               C1 = 1;    C2 = 0;     C3 = 1;   C4 = 1;
               delay(2);
               if(!FA)      miChar = '2';
               else
               {
                  // ----- Columna 3 ------- //
                  C1 = 1;    C2 = 1;     C3 = 0;    C4 = 1;
                  delay(2);
                  if(!FA)      miChar = '3';
                  else
                  {
                      // ----- Columna 4 ------- //
                      C1 = 1;    C2 = 1;     C3 = 1;    C4 = 0;
                      delay(2);
                      if(!FA)      miChar = 'A';   
                  }
               }
            }
            C1 = 0;    C2 = 0;     C3 = 0;   C4 = 0;
            while(!FA);
            delay(5);
          }
    }
    else if(!FB)          
    {
        delay(2);
        if(!FB)
        {
            // ----- Columna 1 ------- //
            C1 = 0;    C2 = 1;     C3 = 1;      C4 = 1;
            delay(2);
            if(!FB)      miChar = '4'; 
            else
            {
                // ----- Columna 2 ------- //
               C1 = 1;    C2 = 0;     C3 = 1;   C4 = 1;
               delay(2);
               if(!FB)      miChar = '5';
               else
               {
                  // ----- Columna 3 ------- //
                  C1 = 1;    C2 = 1;     C3 = 0;    C4 = 1;
                  delay(2);
                  if(!FB)      miChar = '6';
                  else
                  {
                      // ----- Columna 4 ------- //
                      C1 = 1;    C2 = 1;     C3 = 1;    C4 = 0;
                      delay(2);
                      if(!FB)      miChar = 'B'; 
                  }
               }
            }
            C1 = 0;    C2 = 0;     C3 = 0;   C4 = 0;
            while(!FB);
            delay(5);
          }
    }
    else if(!FC)          
    {
        delay(2);
        if(!FC)
        {
            // ----- Columna 1 ------- //
            C1 = 0;    C2 = 1;     C3 = 1;      C4 = 1;
            delay(2);
            if(!FC)      miChar = '7';
            else
            {
                // ----- Columna 2 ------- //
               C1 = 1;    C2 = 0;     C3 = 1;   C4 = 1;
               delay(2);
               if(!FC)      miChar = '8';
               else
               {
                  // ----- Columna 3 ------- //
                  C1 = 1;    C2 = 1;     C3 = 0;    C4 = 1;
                  delay(2);
                  if(!FC)      miChar = '9';
                  else
                  {
                      // ----- Columna 4 ------- //
                      C1 = 1;    C2 = 1;     C3 = 1;    C4 = 0;
                      delay(2);
                      if(!FC)      miChar = 'C';  
                  }
               }
            }
            C1 = 0;    C2 = 0;     C3 = 0;   C4 = 0;
            while(!FC);
            delay(5);
          }
    }
    else if(!FD)          
    {
        delay(2);
        if(!FD)
        {
            // ----- Columna 1 ------- //
            C1 = 0;    C2 = 1;     C3 = 1;      C4 = 1;
            delay(2);
            if(!FD)      miChar = '*';
            else
            {
                // ----- Columna 2 ------- //
               C1 = 1;    C2 = 0;     C3 = 1;   C4 = 1;
               delay(2);
               if(!FD)      miChar = '0';
               else
               {
                  // ----- Columna 3 ------- //
                  C1 = 1;    C2 = 1;     C3 = 0;    C4 = 1;
                  delay(2);
                  if(!FD)      miChar = '#';
                  else
                  {
                      // ----- Columna 4 ------- //
                      C1 = 1;    C2 = 1;     C3 = 1;    C4 = 0;
                      delay(2);
                      if(!FD)      miChar = 'D';  
                  }
               }
            }
            C1 = 0;    C2 = 0;     C3 = 0;   C4 = 0;
            while(!FD);
            delay(5);
          }
    }    
    C1 = 0;    C2 = 0;     C3 = 0;    C4 = 0;
    return miChar;
}

static void matrixKeypadReset()
{
    matrixKeypadState = MATRIX_KEYPAD_SCANNING;
}
