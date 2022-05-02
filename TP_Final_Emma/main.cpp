/*  Proyecto Final
    Introducción a los Sistemas Embebidos
    Carrera de Especialización en Sistemas Embebidos
    FIUBA, año 2022

Autor: Joan Emmanuel Jordán     */

//=====[Libraries]=============================================================
#include "smart_home_system.h"

//=====[Main function, the program entry point after power on or reset]========

int main()
{
    smartHomeSystemInit();
    while (true) {
        smartHomeSystemUpdate();
    }
}