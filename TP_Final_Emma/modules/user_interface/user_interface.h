//=====[#include guards - begin]===============================================

#ifndef _USER_INTERFACE_H_
#define _USER_INTERFACE_H_

//=====[Libraries]=============================================================

//=====[Declaration of public defines]=======================================

//=====[Declaration of public data types]======================================

//=====[Declarations (prototypes) of public functions]=========================

void userInterfaceInit();
bool userInterfaceUpdate();
bool userInterfaceCodeCompleteRead();
void userInterfaceCodeCompleteWrite( bool state );

bool incorrectCodeStateRead();
void incorrectCodeStateWrite( bool state );

bool systemBlockedStateRead();
void systemBlockedStateWrite( bool state );

//=====[#include guards - end]=================================================

#endif // _USER_INTERFACE_H_