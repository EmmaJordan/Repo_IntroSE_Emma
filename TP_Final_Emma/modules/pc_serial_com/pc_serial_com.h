//=====[#include guards - begin]===============================================

#ifndef _PC_SERIAL_COM_H_
#define _PC_SERIAL_COM_H_

#define TIEMPO_MIN 100
#define TIEMPO_MAX 3000

#define KV_MIN 40
#define KV_MAX 110


//=====[Libraries]=============================================================

//=====[Declaration of public defines]=======================================

//=====[Declaration of public data types]======================================

//=====[Declarations (prototypes) of public functions]=========================

void pcSerialComInit();
char pcSerialComCharRead();
void pcSerialComStringWrite( const char* str );
void pcSerialComUpdate();
bool pcSerialComCodeCompleteRead();
void pcSerialComCodeCompleteWrite( bool state );
void uartUpdate (uint16_t lin, uint16_t kv, uint16_t time);
void uartDisparo();

uint16_t getkV();
uint16_t getTiempo();
void setkV(bool aux);
void setTiempo(bool aux);

//=====[#include guards - end]=================================================

#endif // _PC_SERIAL_COM_H_