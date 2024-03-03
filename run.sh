#!/bin/bash

# Derleme
arm-linux-gnueabihf-as -o $1.o $1.s
arm-linux-gnueabihf-ld -o $1 $1.o

# Çalıştırma
qemu-arm $1