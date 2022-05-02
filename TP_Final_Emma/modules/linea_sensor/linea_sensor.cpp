//=====[Libraries]=============================================================

#include "mbed.h"

#include "linea_sensor.h"

#include "smart_home_system.h"

//=====[Declaration of private defines]======================================

#define LINEA_NUMBER_OF_AVG_SAMPLES    10

//=====[Declaration of private data types]=====================================

//=====[Declaration and initialization of public global objects]===============

AnalogIn analogLin(A0);

//=====[Declaration of external public global variables]=======================

//=====[Declaration and initialization of public global variables]=============

//=====[Declaration and initialization of private global variables]============

float lineaReadingsArray[LINEA_NUMBER_OF_AVG_SAMPLES];

//=====[Declarations (prototypes) of private functions]========================

//=====[Implementations of public functions]===================================

void lineaInit()
{
    int i;
    
    for( i=0; i<LINEA_NUMBER_OF_AVG_SAMPLES ; i++ ) {
        lineaReadingsArray[i] = 0;
    }
}

static uint16_t analogUpdate()
{
	static int lineaSampleIndex = 0;
    float lineaReadingsSum = 0.0;
    float lineaReadingsAverage = 0.0;

    int i = 0;
    lineaReadingsArray[lineaSampleIndex] = analogLin.read();
    
	   lineaSampleIndex++;
    if ( lineaSampleIndex >= LINEA_NUMBER_OF_AVG_SAMPLES) {
        lineaSampleIndex = 0;
    }
	
   lineaReadingsSum = 0.0;
    for (i = 0; i < LINEA_NUMBER_OF_AVG_SAMPLES; i++) {
        lineaReadingsSum = lineaReadingsSum + lineaReadingsArray[i];
    }
    lineaReadingsAverage = lineaReadingsSum / LINEA_NUMBER_OF_AVG_SAMPLES;
    
    uint16_t promedio = 220*(2.0*lineaReadingsAverage);
    return promedio;
}

static uint16_t analog1, analog2, analog3;
uint16_t lineaUpdate()
{ 
	analog1 = analogUpdate();
	analog2 = analogUpdate();
	analog3 = analogUpdate();
    return (analog1+analog2+analog3)/3;
}

