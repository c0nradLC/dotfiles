#!/bin/sh
echo $(sysctl hw.acpi.battery.life | cut -d " " -f 2)%
