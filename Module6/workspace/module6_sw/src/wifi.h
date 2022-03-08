#pragma once

#include <stdio.h>
#include <stdlib.h>
#include "xuartps.h"

void wifi_init();

void send_ping();

int send_update(int mode_from_main);

void wifi_close();
