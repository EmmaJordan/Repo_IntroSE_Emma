//=====[Libraries]=============================================================

#include "mbed.h"
#include "arm_book_lib.h"

#include "pc_serial_com.h"
#include "display.h"

#include "siren.h"
#include "fire_alarm.h"
#include "code.h"
#include "date_and_time.h"
#include "temperature_sensor.h"
#include "gas_sensor.h"
#include "event_log.h"
#include "motor.h"
#include "gate.h"
#include "motion_sensor.h"

//=====[Declaration of private defines]======================================

//=====[Declaration of private data types]=====================================
uint16_t uartLinea;
uint16_t uartkV;
uint16_t uartTiempo;

typedef enum{
    PC_SERIAL_COMMANDS,
    PC_SERIAL_GET_CODE,
    PC_SERIAL_SAVE_NEW_CODE,
} pcSerialComMode_t;

DigitalOut sirenaUart (D9);
//=====[Declaration and initialization of public global objects]===============

Serial uartUsb(USBTX, USBRX);

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

char codeSequenceFromPcSerialCom[CODE_NUMBER_OF_KEYS];

//=====[Declaration and initialization of private global variables]============

static pcSerialComMode_t pcSerialComMode = PC_SERIAL_COMMANDS;
static bool codeComplete = false;
static int numberOfCodeChars = 0;

//=====[Declarations (prototypes) of private functions]========================

static void pcSerialComGetCodeUpdate( char receivedChar );
static void pcSerialComSaveNewCodeUpdate( char receivedChar );

static void pcSerialComCommandUpdate( char receivedChar );

static void availableCommands();
static void commandShowCurrentAlarmState();
static void commandShowCurrentGasDetectorState();
static void commandShowCurrentOverTemperatureDetectorState();
static void commandEnterCodeSequence();
static void commandEnterNewCode();
static void commandShowCurrentTemperatureInCelsius();
static void commandShowCurrentTemperatureInFahrenheit();
static void commandSetDateAndTime();
static void commandShowDateAndTime();
static void commandShowStoredEvents();
static void commandShowCurrentMotorState();
static void commandShowCurrentGateState();
static void commandMotionSensorActivate();
static void commandMotionSensorDeactivate();

//=====[Implementations of public functions]===================================

void pcSerialComInit()
{
    uartLinea = 220;
    uartkV = 40;
    uartTiempo = 100;
    
    uartUsb.printf( "Proyecto Final\r\n" );
    uartUsb.printf( "Introduccion a los Sistemas Embebidos\r\n" );
    uartUsb.printf( "Carrera de Especializacion en Sistemas Embebidos\r\n" );
    uartUsb.printf( "FIUBA\r\n" );
    uartUsb.printf( "17co2022\r\n" );
    uartUsb.printf( "Jordan Joan Emmanuel\r\n\r\n" );
    availableCommands();
}

char pcSerialComCharRead()
{
    char receivedChar = '\0';
    if( uartUsb.readable() ) {
        receivedChar = uartUsb.getc();
    }
    return receivedChar;
}

void pcSerialComStringWrite( const char* str )
{
    uartUsb.printf( "%s", str );
}

void uartUpdate (uint16_t lin, uint16_t kv, uint16_t time)
{
    uartLinea = lin;
    uartkV = kv;
    uartTiempo = time;
    availableCommands();
}

void uartDisparo()
{
    uartUsb.printf("DISPARO EXITOSO\r\n");
    uartUpdate(uartLinea,uartkV,uartTiempo);    
}

void pcSerialComUpdate()
{
    char receivedChar = pcSerialComCharRead();
    if( receivedChar != '\0' ) 
    {
        switch ( pcSerialComMode ) 
        {
            case PC_SERIAL_COMMANDS:
                pcSerialComCommandUpdate( receivedChar );
                break;

            case PC_SERIAL_GET_CODE:
                pcSerialComGetCodeUpdate( receivedChar );
                break;

            case PC_SERIAL_SAVE_NEW_CODE:
                pcSerialComSaveNewCodeUpdate( receivedChar );
                break;
            default:
                pcSerialComMode = PC_SERIAL_COMMANDS;
            break;
        }
    }    
}

bool pcSerialComCodeCompleteRead()
{
    return codeComplete;
}

void pcSerialComCodeCompleteWrite( bool state )
{
    codeComplete = state;
}

//=====[Implementations of private functions]==================================

static void pcSerialComGetCodeUpdate( char receivedChar )
{
    codeSequenceFromPcSerialCom[numberOfCodeChars] = receivedChar;
    uartUsb.printf( "*" );
    numberOfCodeChars++;
   if ( numberOfCodeChars >= CODE_NUMBER_OF_KEYS ) {
        pcSerialComMode = PC_SERIAL_COMMANDS;
        codeComplete = true;
        numberOfCodeChars = 0;
    } 
}

static void pcSerialComSaveNewCodeUpdate( char receivedChar )
{
    static char newCodeSequence[CODE_NUMBER_OF_KEYS];

    newCodeSequence[numberOfCodeChars] = receivedChar;
    uartUsb.printf( "*" );
    numberOfCodeChars++;
    if ( numberOfCodeChars >= CODE_NUMBER_OF_KEYS ) {
        pcSerialComMode = PC_SERIAL_COMMANDS;
        numberOfCodeChars = 0;
        codeWrite( newCodeSequence );
        uartUsb.printf( "\r\nNew code configured\r\n\r\n" );
    } 
}

static void pcSerialComCommandUpdate( char receivedChar )
{
    //uartUsb.printf("eco=%d\r\n",receivedChar);
    sirenaUart = ON;
    delay(40);
    sirenaUart = OFF;
    switch (receivedChar) 
    {
        case 173: 
                    if(uartTiempo>TIEMPO_MIN) uartTiempo=uartTiempo-100; 
                    //uartUsb.printf("Menos Tiempo\r\n");
                    break;
                    
        case 171: 
                    if(uartTiempo<TIEMPO_MAX) uartTiempo=uartTiempo+100; 
                    //uartUsb.printf("Mas Tiempo\r\n");
                    break;
                    
        case 251: 
                    if(uartkV>KV_MIN) uartkV=uartkV-10; 
                    //uartUsb.printf("Menos kV\r\n");
                    break;
                    
        case 253: 
                    if(uartkV<KV_MAX) uartkV=uartkV+10; 
                    //uartUsb.printf("Mas kV\r\n");
                    break;
        
        case '3': commandShowCurrentOverTemperatureDetectorState(); break;
        case '4': commandEnterCodeSequence(); break;
        case '5': commandEnterNewCode(); break;
        case 'c': case 'C': commandShowCurrentTemperatureInCelsius(); break;
        case 'f': case 'F': commandShowCurrentTemperatureInFahrenheit(); break;
        case 's': case 'S': commandSetDateAndTime(); break;
        case 't': case 'T': commandShowDateAndTime(); break;
        case 'e': case 'E': commandShowStoredEvents(); break;
        case 'm': case 'M': commandShowCurrentMotorState(); break;
        case 'g': case 'G': commandShowCurrentGateState(); break;
        case 'i': case 'I': commandMotionSensorActivate(); break;
        case 'h': case 'H': commandMotionSensorDeactivate(); break;
        default: availableCommands(); break;
    } 
    availableCommands();
}

static void availableCommands()
{
    uartUsb.printf( "Linea\tkV\tTiempo\r\n" );
    uartUsb.printf( "%dV\t%d\t%dms\r\n\r\n",uartLinea,uartkV,uartTiempo );
}

static void commandShowCurrentAlarmState()
{
    if ( sirenStateRead() ) {
        uartUsb.printf( "The alarm is activated\r\n");
    } else {
        uartUsb.printf( "The alarm is not activated\r\n");
    }
}

static void commandShowCurrentGasDetectorState()
{
    if ( gasDetectorStateRead() ) {
        uartUsb.printf( "Gas is being detected\r\n"); // Ver de poner la concentracion de gas no este superando el umbral
    } else {
        uartUsb.printf( "Gas is not being detected\r\n");
    }    
}

static void commandShowCurrentOverTemperatureDetectorState()
{
    if ( overTemperatureDetectorStateRead() ) {
        uartUsb.printf( "Temperature is above the maximum level\r\n");
    } else {
        uartUsb.printf( "Temperature is below the maximum level\r\n");
    }
}

static void commandEnterCodeSequence()
{
    if( sirenStateRead() ) {
        uartUsb.printf( "Please enter the four digits numeric code " );
        uartUsb.printf( "to deactivate the alarm: " );
        pcSerialComMode = PC_SERIAL_GET_CODE;
        codeComplete = false;
        numberOfCodeChars = 0;
    } else {
        uartUsb.printf( "Alarm is not activated.\r\n" );
    }
}

static void commandEnterNewCode()
{
    uartUsb.printf( "Please enter the new four digits numeric code " );
    uartUsb.printf( "to deactivate the alarm: " );
    numberOfCodeChars = 0;
    pcSerialComMode = PC_SERIAL_SAVE_NEW_CODE;

}

static void commandShowCurrentTemperatureInCelsius()
{
    uartUsb.printf( "Temperature: %.2f °C\r\n",
                    temperatureSensorReadCelsius() );    
}

static void commandShowCurrentTemperatureInFahrenheit()
{
    uartUsb.printf( "Temperature: %.2f °F\r\n", 
                    temperatureSensorReadFahrenheit() );    
}

static void commandSetDateAndTime()
{
    int year   = 0;
    int month  = 0;
    int day    = 0;
    int hour   = 0;
    int minute = 0;
    int second = 0;
    
    uartUsb.printf("\r\nType de current year (YYYY) and press enter: ");
    uartUsb.scanf("%d", &year);
    uartUsb.printf("%d\r\n", year);

    uartUsb.printf("Type de current month (1-12) and press enter: ");
    uartUsb.scanf("%d", &month);
    uartUsb.printf("%d\r\n", month);

    uartUsb.printf("Type de current day (1-31) and press enter: ");
    uartUsb.scanf("%d", &day);
    uartUsb.printf("%d\r\n", day);

    uartUsb.printf("Type de current hour (0-23) and press enter: ");
    uartUsb.scanf("%d", &hour);
    uartUsb.printf("%d\r\n",hour);

    uartUsb.printf("Type de current minutes (0-59) and press enter: ");
    uartUsb.scanf("%d", &minute);
    uartUsb.printf("%d\r\n", minute);

    uartUsb.printf("Type de current seconds (0-59) and press enter: ");
    uartUsb.scanf("%d", &second);
    uartUsb.printf("%d\r\n", second);
    
    uartUsb.printf("Date and time has been set\r\n");

    while ( uartUsb.readable() ) {
        uartUsb.getc();
    }

    dateAndTimeWrite( year, month, day, hour, minute, second );
}

static void commandShowDateAndTime()
{
    uartUsb.printf("Date and Time = %s", dateAndTimeRead());
}

static void commandShowStoredEvents()
{
    char str[EVENT_STR_LENGTH];
    int i;
    for (i = 0; i < eventLogNumberOfStoredEvents(); i++) {
        eventLogRead( i, str );
        uartUsb.printf( "%s\r\n", str );                       
    }
}
static void commandShowCurrentMotorState()
{
    switch ( motorDirectionRead() ) {
        case STOPPED: uartUsb.printf( "The motor is stopped\r\n"); break;
        case DIRECTION_1: 
            uartUsb.printf( "The motor is turning in direction 1\r\n"); break;
        case DIRECTION_2: 
            uartUsb.printf( "The motor is turning in direction 2\r\n"); break;
    }
}
static void commandShowCurrentGateState()
{
    switch ( gateStatusRead() ) {
        case GATE_CLOSED: uartUsb.printf( "The gate is closed\r\n"); break;
        case GATE_OPEN: uartUsb.printf( "The gate is open\r\n"); break;
        case GATE_OPENING: uartUsb.printf( "The gate is opening\r\n"); break;
        case GATE_CLOSING: uartUsb.printf( "The gate is closing\r\n"); break;
    }
}

static void commandMotionSensorActivate()
{
    motionSensorActivate();
}

static void commandMotionSensorDeactivate()
{
    motionSensorDeactivate();
}

uint16_t getkV()
{
    return uartkV;
}

uint16_t getTiempo()
{
    return uartTiempo;
}

void setkV(bool aux)
{
    if(aux==0)      
    {
        if(uartkV>KV_MIN) uartkV=uartkV-10;
    }
    else if(aux==1) 
    {
        if(uartkV<KV_MAX) uartkV=uartkV+10;
    }
    availableCommands();
}
void setTiempo(bool aux)
{
    if(aux==0)      
    {
        if(uartTiempo>TIEMPO_MIN) uartTiempo=uartTiempo-100;
    }
    else if(aux==1)
    {
        if(uartTiempo<TIEMPO_MAX) uartTiempo=uartTiempo+100;
    }
    availableCommands();
}