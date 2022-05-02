//=====[Libraries]=============================================================

#include "mbed.h"
#include "arm_book_lib.h"

#include "user_interface.h"
#include "pc_serial_com.h"

#include "code.h"
#include "siren.h"
#include "smart_home_system.h"
#include "fire_alarm.h"
#include "date_and_time.h"
#include "temperature_sensor.h"
#include "gas_sensor.h"
#include "matrix_keypad.h"
#include "display.h"
#include "motor.h"
#include "gate.h"
#include "motion_sensor.h"
#include "alarm.h"
#include "intruder_alarm.h"

//=====[Declaration of private defines]======================================

#define DISPLAY_REFRESH_TIME_REPORT_MS 1000
#define DISPLAY_REFRESH_TIME_ALARM_MS 300

//=====[Declaration of private data types]=====================================

typedef enum{
    DISPLAY_ALARM_STATE,
    DISPLAY_REPORT_STATE
} displayState_t;

//=====[Declaration and initialization of public global objects]===============

DigitalOut ledS0    (LED1);
DigitalOut ledS1    (LED2);
DigitalOut ledS2    (LED3);
DigitalOut disparoS0 (D10);
DigitalOut disparoS1 (D11);
DigitalOut disparoS2 (D12);

DigitalOut buzzerDisparo(D9);


InterruptIn userButton(USER_BUTTON);

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

char codeSequenceFromUserInterface[CODE_NUMBER_OF_KEYS];

//=====[Declaration and initialization of private global variables]============

static displayState_t displayState = DISPLAY_REPORT_STATE;
static int displayRefreshTimeMs = DISPLAY_REFRESH_TIME_REPORT_MS;

static bool incorrectCodeState = OFF;
static bool systemBlockedState = OFF;

static bool codeComplete = false;
static int numberOfCodeChars = 0;

//=====[Declarations (prototypes) of private functions]========================

static void userInterfaceMatrixKeypadUpdate();
static void incorrectCodeIndicatorUpdate();
static void systemBlockedIndicatorUpdate();

static void userInterfaceDisplayInit();
static void userInterfaceDisplayUpdate();
static void userInterfaceDisplayReportStateInit();
static void userInterfaceDisplayReportStateUpdate();
static void userInterfaceDisplayAlarmStateInit();
static void userInterfaceDisplayAlarmStateUpdate();

static void userButton_Callback();

//=====[Implementations of public functions]===================================

void userInterfaceInit()
{
    userButton.mode(PullDown);
    userButton.rise(&userButton_Callback);

    buzzerDisparo = OFF;
    ledS0 = OFF;
    ledS1 = OFF;
    ledS2 = OFF;
    disparoS0 = OFF;
    disparoS1 = OFF;
    disparoS2 = OFF;

    matrixKeypadInit( SYSTEM_TIME_INCREMENT_MS );
}

static volatile bool flagDisparo = 0;
static volatile uint16_t tiempoDisparo = 0;
bool userInterfaceUpdate()
{
    if(flagDisparo==1)
    {
        flagDisparo = 0;
        tiempoDisparo = getTiempo();
        
        ledS0 = ON;
        ledS1 = ON;
        ledS2 = ON;
        disparoS0 = ON;
        disparoS1 = ON;
        disparoS2 = ON;
        buzzerDisparo = ON;
                
        delay(tiempoDisparo);
        
        ledS0 = OFF;
        ledS1 = OFF;
        ledS2 = OFF;
        disparoS0 = OFF;
        disparoS1 = OFF;
        disparoS2 = OFF;
        buzzerDisparo = OFF;
        
        return 1;
    }
    userInterfaceMatrixKeypadUpdate();
    return 0;
}

bool incorrectCodeStateRead()
{
    return incorrectCodeState;
}

void incorrectCodeStateWrite( bool state )
{
    incorrectCodeState = state;
}

bool systemBlockedStateRead()
{
    return systemBlockedState;
}

void systemBlockedStateWrite( bool state )
{
    systemBlockedState = state;
}

bool userInterfaceCodeCompleteRead()
{
    return codeComplete;
}

void userInterfaceCodeCompleteWrite( bool state )
{
    codeComplete = state;
}

//=====[Implementations of private functions]==================================

static void userInterfaceMatrixKeypadUpdate()
{
    static int numberOfHashKeyReleased = 0;
    char keyReleased = matrixKeypadUpdate();
    if( keyReleased != '\0' ) 
    {
        buzzerDisparo = ON;
        delay(40);
        buzzerDisparo = OFF;
        switch(keyReleased)
        {
            case 'A':
                setTiempo(0);
                break;
            case 'B':
                setTiempo(1);
                break;
            case 'C':
                setkV(0);
                break;
            case 'D':
                setkV(1);
                break;
        }
    }
}

/*static void userInterfaceDisplayAlarmStateInit()
{
    displayState = DISPLAY_ALARM_STATE;
    displayRefreshTimeMs = DISPLAY_REFRESH_TIME_ALARM_MS;  
}

static void incorrectCodeIndicatorUpdate()
{
    incorrectCodeLed = incorrectCodeStateRead();
}

static void systemBlockedIndicatorUpdate()
{
    systemBlockedLed = systemBlockedState;
}*/

static void userButton_Callback()
{
    flagDisparo = 1;
}

