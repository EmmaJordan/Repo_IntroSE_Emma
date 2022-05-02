//=====[Libraries]=============================================================

#include "arm_book_lib.h"

#include "smart_home_system.h"

#include "linea_sensor.h"
#include "display.h"

#include "siren.h"
#include "user_interface.h"
#include "fire_alarm.h"
#include "pc_serial_com.h"
#include "event_log.h"
#include "motor.h"
#include "gate.h"
#include "motion_sensor.h"
#include "alarm.h"
#include "intruder_alarm.h"

//=====[Declaration of private defines]======================================

//=====[Declaration of private data types]=====================================

//=====[Declaration and initialization of public global objects]===============

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

//=====[Declaration and initialization of private global variables]============

//=====[Declarations (prototypes) of private functions]========================

//=====[Implementations of public functions]===================================

DigitalOut sirena(D9);

int16_t linea, lineaAnt;
int16_t kv, kvAnt;
int16_t tiempo,tiempoAnt;

void smartHomeSystemInit()
{   
    pcSerialComInit();
    
    lineaInit();
    linea = lineaUpdate();
    kv = 40;
    tiempo = 100;

    
    userInterfaceInit();
    displayInit();
    
    alarmInit();
    //intruderAlarmInit();
    //motorControlInit();
    //gateInit();
}


static bool flagDisparo = 0;
void smartHomeSystemUpdate()
{
    pcSerialComUpdate();
    
    linea   = lineaUpdate();
    kv      = getkV();
    tiempo  = getTiempo();
    
    flagDisparo = userInterfaceUpdate();
    if(flagDisparo)
    {
        uartDisparo();
        displayDisparo();
        flagDisparo = 0;
    }
    else
    {
        if(linea<=lineaAnt-2 || linea>=lineaAnt+2)
        {   
            uartUpdate(linea,kv,tiempo);
            displayUpdate(linea,kv,tiempo);
            lineaAnt = linea;
        }
        if(kv<kvAnt || kv>kvAnt)
        {   
            uartUpdate(linea,kv,tiempo);
            displayUpdate(linea,kv,tiempo);
            kvAnt = kv;
        }
        if(tiempo<tiempoAnt || tiempo>tiempoAnt)
        {   
            uartUpdate(linea,kv,tiempo);
            displayUpdate(linea,kv,tiempo);
            tiempoAnt = tiempo;
        }
    }
        
    //intruderAlarmUpdate();
    //alarmUpdate();
    //eventLogUpdate();
    //motorControlUpdate();
    delay(SYSTEM_TIME_INCREMENT_MS);
}

//=====[Implementations of private functions]==================================
