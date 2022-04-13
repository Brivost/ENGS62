# ENGS62: Microprocessors

This repo includes the hardware for the microprocessor Zybo Z7-10 development board. The Zybo board includes a dual-core ARM Cortex-A9 processor coupled to an FPGA. The board also includes 6 push-buttons, 4 slide switches, 5 LED's, 2 RGB LED's, and 5 Pmod ports. These peripheral expansion ports were used to support a PWM-controlled servo, potentiometer, and WiFly module. 

![image](https://user-images.githubusercontent.com/91804655/163095070-85e6eee9-4346-4804-86c7-51805397f132.png)

## Hardware

Hardware was individually built for modules 1-6 using Vivado. This involved instantiating the Zynq processor, GPIO ports, timers, and concats. 

## Software

The freshly built hardware was controlled using reusable software modules written in Vitis. Code for module 6 (state machine project) is located at Module6/workspace/module6_sw/src

## State Machine

A culminating project modeled a train crossing and incorporated all prior software modules. On-board resources were used such as LED's, buttons, switches, and timers, as well as peripheral additions such as a servo, potentiometer, and WiFly module.

![IMG_2460](https://user-images.githubusercontent.com/91804655/163095822-67629ea6-6383-4f67-8c85-8c40a3e991dd.JPG)
