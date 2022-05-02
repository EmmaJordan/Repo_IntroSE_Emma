//=====[Libraries]=============================================================

#include "mbed.h"
#include "arm_book_lib.h"
#include "display.h"

//=====[Declaration of private defines]========================================

#define DISPLAY_IR_CLEAR_DISPLAY   0b00000001
#define DISPLAY_IR_ENTRY_MODE_SET  0b00000100
#define DISPLAY_IR_DISPLAY_CONTROL 0b00001000
#define DISPLAY_IR_FUNCTION_SET    0b00100000
#define DISPLAY_IR_SET_DDRAM_ADDR  0b10000000

#define DISPLAY_IR_ENTRY_MODE_SET_INCREMENT 0b00000010
#define DISPLAY_IR_ENTRY_MODE_SET_DECREMENT 0b00000000
#define DISPLAY_IR_ENTRY_MODE_SET_SHIFT     0b00000001
#define DISPLAY_IR_ENTRY_MODE_SET_NO_SHIFT  0b00000000

#define DISPLAY_IR_DISPLAY_CONTROL_DISPLAY_ON  0b00000100
#define DISPLAY_IR_DISPLAY_CONTROL_DISPLAY_OFF 0b00000000
#define DISPLAY_IR_DISPLAY_CONTROL_CURSOR_ON   0b00000010
#define DISPLAY_IR_DISPLAY_CONTROL_CURSOR_OFF  0b00000000
#define DISPLAY_IR_DISPLAY_CONTROL_BLINK_ON    0b00000001
#define DISPLAY_IR_DISPLAY_CONTROL_BLINK_OFF   0b00000000

#define DISPLAY_IR_FUNCTION_SET_8BITS    0b00010000
#define DISPLAY_IR_FUNCTION_SET_4BITS    0b00000000
#define DISPLAY_IR_FUNCTION_SET_2LINES   0b00001000
#define DISPLAY_IR_FUNCTION_SET_1LINE    0b00000000
#define DISPLAY_IR_FUNCTION_SET_5x10DOTS 0b00000100
#define DISPLAY_IR_FUNCTION_SET_5x8DOTS  0b00000000

#define DISPLAY_20x4_LINE1_FIRST_CHARACTER_ADDRESS 0
#define DISPLAY_20x4_LINE2_FIRST_CHARACTER_ADDRESS 64
#define DISPLAY_20x4_LINE3_FIRST_CHARACTER_ADDRESS 20
#define DISPLAY_20x4_LINE4_FIRST_CHARACTER_ADDRESS 84

#define DISPLAY_RS_INSTRUCTION 0
#define DISPLAY_RS_DATA        1

#define DISPLAY_RW_WRITE 0
#define DISPLAY_RW_READ  1

#define DISPLAY_PIN_RS  4
#define DISPLAY_PIN_RW  5
#define DISPLAY_PIN_EN  6
#define DISPLAY_PIN_D0  7  
#define DISPLAY_PIN_D1  8  
#define DISPLAY_PIN_D2  9  
#define DISPLAY_PIN_D3 10
#define DISPLAY_PIN_D4 11
#define DISPLAY_PIN_D5 12 
#define DISPLAY_PIN_D6 13 
#define DISPLAY_PIN_D7 14 

#define DISPLAY_PIN_A_PCF8574 3

#define I2C1_SDA PB_9
#define I2C1_SCL PB_8

#define PCF8574_I2C_BUS_8BIT_WRITE_ADDRESS 78

static uint16_t dispLinea;
static uint16_t dispkV;
static uint16_t dispTiempo;

static char CadenaLinea[5];
static char CadenakV[4];
static char CadenaTiempo[7];

static uint16_t miles, centenas, decenas, unidades; 

//=====[Declaration of private data types]=====================================

typedef struct{
    int address;
    char data;
    bool displayPin_RS;
    bool displayPin_RW; 
    bool displayPin_EN;
    bool displayPin_A;
    bool displayPin_D4;
    bool displayPin_D5;
    bool displayPin_D6;
    bool displayPin_D7;
} pcf8574_t;

//=====[Declaration and initialization of public global objects]===============

DigitalOut displayD0( D0 );
DigitalOut displayD1( D1 );
DigitalOut displayD2( D2 );
DigitalOut displayD3( D3 );
DigitalOut displayD4( D4 );
DigitalOut displayD5( D5 );
DigitalOut displayD6( D6 );
DigitalOut displayD7( D7 );
DigitalOut displayRS( D8 );
DigitalOut displayEN( D9 );

I2C I2C_PCF8574( I2C1_SDA, I2C1_SCL ); 

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

//=====[Declaration and initialization of private global variables]============

static display_t display;
static pcf8574_t pcf8574;
static bool initial8BitCommunicationIsCompleted;

//=====[Declarations (prototypes) of private functions]========================

static void displayPinWrite( uint8_t pinName, int value );
static void displayDataBusWrite( uint8_t dataByte );
static void displayCodeWrite( bool type, uint8_t dataBus );

//=====[Implementations of public functions]===================================

void displayLCDi2cInit( displayConnection_t connection )
{
    display.connection = connection;
    
    if( display.connection == DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER) {
        pcf8574.address = PCF8574_I2C_BUS_8BIT_WRITE_ADDRESS;
        pcf8574.data = 0b00000000;
        I2C_PCF8574.frequency(100000);
        displayPinWrite( DISPLAY_PIN_A_PCF8574,  ON );
    } 
    
    initial8BitCommunicationIsCompleted = FALSE;    

    delay( 50 );
    
    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_FUNCTION_SET | 
                      DISPLAY_IR_FUNCTION_SET_8BITS );
    delay( 5 );
            
    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_FUNCTION_SET | 
                      DISPLAY_IR_FUNCTION_SET_8BITS );
    delay( 1 ); 

    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_FUNCTION_SET | 
                      DISPLAY_IR_FUNCTION_SET_8BITS );
    delay( 1 );  

    switch( display.connection ) {
        case DISPLAY_CONNECTION_GPIO_8BITS:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_FUNCTION_SET | 
                              DISPLAY_IR_FUNCTION_SET_8BITS | 
                              DISPLAY_IR_FUNCTION_SET_2LINES |
                              DISPLAY_IR_FUNCTION_SET_5x8DOTS );
            delay( 1 );         
        break;
        
        case DISPLAY_CONNECTION_GPIO_4BITS:
        case DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_FUNCTION_SET | 
                              DISPLAY_IR_FUNCTION_SET_4BITS );
            delay( 1 );  

            initial8BitCommunicationIsCompleted = TRUE;  

            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_FUNCTION_SET | 
                              DISPLAY_IR_FUNCTION_SET_4BITS | 
                              DISPLAY_IR_FUNCTION_SET_2LINES |
                              DISPLAY_IR_FUNCTION_SET_5x8DOTS );
            delay( 1 );                                      
        break;
    }

    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_DISPLAY_CONTROL |
                      DISPLAY_IR_DISPLAY_CONTROL_DISPLAY_OFF |      
                      DISPLAY_IR_DISPLAY_CONTROL_CURSOR_OFF |       
                      DISPLAY_IR_DISPLAY_CONTROL_BLINK_OFF );       
    delay( 1 );          

    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_CLEAR_DISPLAY );       
    delay( 1 ); 

    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_ENTRY_MODE_SET |
                      DISPLAY_IR_ENTRY_MODE_SET_INCREMENT |       
                      DISPLAY_IR_ENTRY_MODE_SET_NO_SHIFT );                  
    delay( 1 );           

    displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                      DISPLAY_IR_DISPLAY_CONTROL |
                      DISPLAY_IR_DISPLAY_CONTROL_DISPLAY_ON |      
                      DISPLAY_IR_DISPLAY_CONTROL_CURSOR_OFF |    
                      DISPLAY_IR_DISPLAY_CONTROL_BLINK_OFF );    
    delay( 1 );  
}

void displayCharPositionWrite( uint8_t charPositionX, uint8_t charPositionY )
{    
    switch( charPositionY ) {
        case 0:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_SET_DDRAM_ADDR |
                              ( DISPLAY_20x4_LINE1_FIRST_CHARACTER_ADDRESS +
                                charPositionX ) );
            delay( 1 );         
        break;
       
        case 1:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_SET_DDRAM_ADDR |
                              ( DISPLAY_20x4_LINE2_FIRST_CHARACTER_ADDRESS +
                                charPositionX ) );
            delay( 1 );         
        break;
       
        case 2:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_SET_DDRAM_ADDR |
                              ( DISPLAY_20x4_LINE3_FIRST_CHARACTER_ADDRESS +
                                charPositionX ) );
            delay( 1 );         
        break;

        case 3:
            displayCodeWrite( DISPLAY_RS_INSTRUCTION, 
                              DISPLAY_IR_SET_DDRAM_ADDR |
                              ( DISPLAY_20x4_LINE4_FIRST_CHARACTER_ADDRESS +
                                charPositionX ) );
            delay( 1 );         
        break;
    }
}

void displayStringWrite( char const * str )
{
    while (*str) {
        displayCodeWrite(DISPLAY_RS_DATA, *str++);
    }
}

//=====[Implementations of private functions]==================================

static void displayCodeWrite( bool type, uint8_t dataBus )
{
    if ( type == DISPLAY_RS_INSTRUCTION )
        displayPinWrite( DISPLAY_PIN_RS, DISPLAY_RS_INSTRUCTION);
        else
        displayPinWrite( DISPLAY_PIN_RS, DISPLAY_RS_DATA);
    displayPinWrite( DISPLAY_PIN_RW, DISPLAY_RW_WRITE );
    displayDataBusWrite( dataBus );
}

static void displayPinWrite( uint8_t pinName, int value )
{
    switch( display.connection ) {
        case DISPLAY_CONNECTION_GPIO_8BITS:
            switch( pinName ) {
                case DISPLAY_PIN_D0: displayD0 = value;   break;
                case DISPLAY_PIN_D1: displayD1 = value;   break;
                case DISPLAY_PIN_D2: displayD2 = value;   break;
                case DISPLAY_PIN_D3: displayD3 = value;   break;
                case DISPLAY_PIN_D4: displayD4 = value;   break;
                case DISPLAY_PIN_D5: displayD5 = value;   break;
                case DISPLAY_PIN_D6: displayD6 = value;   break;
                case DISPLAY_PIN_D7: displayD7 = value;   break;
                case DISPLAY_PIN_RS: displayRS = value;   break;
                case DISPLAY_PIN_EN: displayEN = value;   break;
                case DISPLAY_PIN_RW: break; 
                default: break;
            }
        case DISPLAY_CONNECTION_GPIO_4BITS:
            switch( pinName ) {
                case DISPLAY_PIN_D4: displayD4 = value;   break;
                case DISPLAY_PIN_D5: displayD5 = value;   break;
                case DISPLAY_PIN_D6: displayD6 = value;   break;
                case DISPLAY_PIN_D7: displayD7 = value;   break;
                case DISPLAY_PIN_RS: displayRS = value;   break;
                case DISPLAY_PIN_EN: displayEN = value;   break;
                case DISPLAY_PIN_RW: break; 
                default: break;
            }
        break;

        case DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER:
           if ( value ) {
                switch( pinName ) {
                    case DISPLAY_PIN_D4: pcf8574.displayPin_D4 = ON; break;
                    case DISPLAY_PIN_D5: pcf8574.displayPin_D5 = ON; break;
                    case DISPLAY_PIN_D6: pcf8574.displayPin_D6 = ON; break;
                    case DISPLAY_PIN_D7: pcf8574.displayPin_D7 = ON; break;
                    case DISPLAY_PIN_RS: pcf8574.displayPin_RS = ON; break;
                    case DISPLAY_PIN_EN: pcf8574.displayPin_EN = ON; break;
                    case DISPLAY_PIN_RW: pcf8574.displayPin_RW = ON; break;
                    case DISPLAY_PIN_A_PCF8574: pcf8574.displayPin_A = ON; break;
                    default: break;
                }
            }
            else {
                switch( pinName ) {
                    case DISPLAY_PIN_D4: pcf8574.displayPin_D4 = OFF; break;
                    case DISPLAY_PIN_D5: pcf8574.displayPin_D5 = OFF; break;
                    case DISPLAY_PIN_D6: pcf8574.displayPin_D6 = OFF; break;
                    case DISPLAY_PIN_D7: pcf8574.displayPin_D7 = OFF; break;
                    case DISPLAY_PIN_RS: pcf8574.displayPin_RS = OFF; break;
                    case DISPLAY_PIN_EN: pcf8574.displayPin_EN = OFF; break;
                    case DISPLAY_PIN_RW: pcf8574.displayPin_RW = OFF; break;
                    case DISPLAY_PIN_A_PCF8574: pcf8574.displayPin_A = OFF; break;
                    default: break;
                }
            }     
            pcf8574.data = 0b00000000;
            if ( pcf8574.displayPin_RS ) pcf8574.data |= 0b00000001; 
            if ( pcf8574.displayPin_RW ) pcf8574.data |= 0b00000010; 
            if ( pcf8574.displayPin_EN ) pcf8574.data |= 0b00000100; 
            if ( pcf8574.displayPin_A  ) pcf8574.data |= 0b00001000; 
            if ( pcf8574.displayPin_D4 ) pcf8574.data |= 0b00010000; 
            if ( pcf8574.displayPin_D5 ) pcf8574.data |= 0b00100000; 
            if ( pcf8574.displayPin_D6 ) pcf8574.data |= 0b01000000; 
            if ( pcf8574.displayPin_D7 ) pcf8574.data |= 0b10000000;                                     
            I2C_PCF8574.write( pcf8574.address, &pcf8574.data, 1);    
        break; 
    }
}

static void displayDataBusWrite( uint8_t dataBus )
{
    displayPinWrite( DISPLAY_PIN_EN, OFF );
    displayPinWrite( DISPLAY_PIN_D7, dataBus & 0b10000000 );
    displayPinWrite( DISPLAY_PIN_D6, dataBus & 0b01000000 );
    displayPinWrite( DISPLAY_PIN_D5, dataBus & 0b00100000 );
    displayPinWrite( DISPLAY_PIN_D4, dataBus & 0b00010000 );
    switch( display.connection ) {
        case DISPLAY_CONNECTION_GPIO_8BITS:
            displayPinWrite( DISPLAY_PIN_D3, dataBus & 0b00001000 );
            displayPinWrite( DISPLAY_PIN_D2, dataBus & 0b00000100 );  
            displayPinWrite( DISPLAY_PIN_D1, dataBus & 0b00000010 );      
            displayPinWrite( DISPLAY_PIN_D0, dataBus & 0b00000001 );
        break; 
              
        case DISPLAY_CONNECTION_GPIO_4BITS:
        case DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER:
            if ( initial8BitCommunicationIsCompleted == TRUE) {
                displayPinWrite( DISPLAY_PIN_EN, ON );         
                delay( 1 );
                displayPinWrite( DISPLAY_PIN_EN, OFF );              
                delay( 1 );        
                displayPinWrite( DISPLAY_PIN_D7, dataBus & 0b00001000 );
                displayPinWrite( DISPLAY_PIN_D6, dataBus & 0b00000100 );  
                displayPinWrite( DISPLAY_PIN_D5, dataBus & 0b00000010 );      
                displayPinWrite( DISPLAY_PIN_D4, dataBus & 0b00000001 );                
            }
        break;
    
    }
    displayPinWrite( DISPLAY_PIN_EN, ON );              
    delay( 1 );
    displayPinWrite( DISPLAY_PIN_EN, OFF );  
    delay( 1 );                   
}

static void transformaLinea(uint16_t valorOut)
{
    centenas = valorOut/100;
    decenas  = (valorOut-100*centenas)/10;
    unidades = (valorOut-100*centenas-10*decenas);

    if(centenas==0) CadenaLinea[0]=' ';
    else CadenaLinea[0]=centenas+48;
    if(centenas==0 && decenas==0) CadenaLinea[1]=' ';
    else CadenaLinea[1]=decenas+48;

    CadenaLinea[2]=unidades+48;
}

static void transformakV(uint16_t valorOut)
{
    centenas = valorOut/100;
    decenas  = (valorOut-100*centenas)/10;
    unidades = (valorOut-100*centenas-10*decenas);

    if(centenas==0) CadenakV[0]=' ';
    else CadenakV[0]=centenas+48;
    if(centenas==0 && decenas==0) CadenakV[1]=' ';
    else CadenakV[1]=decenas+48;

    CadenakV[2]=unidades+48;   
}
   
static void transformaTiempo(uint16_t valorOut)
{
    miles = valorOut/1000;
    centenas = (valorOut-1000*miles)/100;
    decenas  = (valorOut-1000*miles-100*centenas)/10;
    unidades = (valorOut-1000*miles-100*centenas-10*decenas);

    if(miles==0) CadenaTiempo[0]=' ';
    else CadenaTiempo[0]=miles+48;
    if(miles==0 && centenas==0) CadenaTiempo[1]=' ';
    else CadenaTiempo[1]=centenas+48;
    if(miles==0 && centenas==0 && decenas==0) CadenaTiempo[2]=' ';
    else CadenaTiempo[2]=decenas+48;

    CadenaTiempo[3]=unidades+48;   
}
void displayInit()
{
    CadenaLinea [3] = 'V';
    CadenaLinea [4] = 0;
    
    CadenakV[3]= 0; 
    
    CadenaTiempo[4] = 'm';
    CadenaTiempo[5] = 's';
    CadenaTiempo[6] = 0; 
    
    dispLinea = 220;
    dispkV = 40;
    dispTiempo = 100;
    
    transformaLinea(dispLinea);
    transformakV(dispkV);
    transformaTiempo(dispTiempo);
    
    displayLCDi2cInit(DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER);
}

void displayUpdate(uint16_t lin, uint16_t kv, uint16_t time)
{
    dispLinea = lin;
    dispkV = kv;
    dispTiempo = time;
    
    transformaLinea(dispLinea);
    transformakV(dispkV);
    transformaTiempo(dispTiempo);
    
    displayCharPositionWrite ( 0,0 );
    displayStringWrite( "Linea  kV Tiempo" );

    displayCharPositionWrite ( 1,1 );
    displayStringWrite( &CadenaLinea[0] );
    
    displayCharPositionWrite ( 6,1 );
    displayStringWrite( &CadenakV[0] );
    
    displayCharPositionWrite ( 10,1 );
    displayStringWrite( &CadenaTiempo[0] );
}

void displayDisparo()
{
    displayCharPositionWrite ( 0,0 );
    displayStringWrite( "    DISPARO     " );
    displayCharPositionWrite ( 0,1 );
    displayStringWrite( "    EXITOSO     " );
    delay(1000);
    displayCharPositionWrite ( 0,0 );
    displayStringWrite( "                " );
    displayCharPositionWrite ( 0,1 );
    displayStringWrite( "                " );
    delay(500);
    displayUpdate(dispLinea,dispkV,dispTiempo);
}

/*void uartToDisplayUpdate(uint16_t kv, uint16_t time)
{
    displayUpdate(dispLinea,kv,time);
}*/
    