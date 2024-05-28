# digital-clock-with-rtc

---------------------------------------------------------

This project is based on the source code available here :
     https://github.com/salehelmaraghy/digital-clock-with-rtc

It is aimed to train myself with 'C' programming and gain experience in:

   - Microcontroller programming and optimization for embedded systems
   - Interfacing and controlling various peripherals (like 7-segment displays, RTC modules, and buttons)
   - Implementing communication protocols for inter-device communication (such as I2C)
   - Handling timers and interrupts for time-keeping and user input
   - Modular programming and code organization for maintainability and scalability
   - Hardware integration and troubleshooting of physical components
   - Time management and manipulation of time data
   - Project documentation and clear explanation of system functionality
   - Embedded systems design and development
   - Practical application of programming concepts in a real-world project

But before all... FOR FUN !

---------------------------------------------------------

ORIGINAL README CONTENT

---------------------------------------------------------

# digital-clock-with-rtc

this simple project is to implement a digital clock using timers and display it on  7-segments and save the time to RTC and modify 
The RTC here is used just as a backup if the power is unplugged.

the time using buttons. 

# Devices:
Micro-controller:ATmega32.

. external peripherals:

Real time clock RTC "DS1307": to store the time.

7-segment: to display the time.

Buttons:for user interface.

.Internal peripherals:

I2C:to communicate with the RTC.

timer:to get the time every 30 seconds from the RTC and compare it with the.

# Pin configuration:

7-segment : PORT B0 B1 B2 B3 for the data and PORT C2 C3 C4 C5 for enabling the 7-segments.

RTC		  : Port C0 C1 for I2C clk and data.

Led       : Port D4 to blink each second.

Buttons	  :	Port D2 D3 for user interface.

# Steps:

first take the folder "RTC_INITAL_VALUE" add it to a separate project and add the initial time to it.

then create a new project and copy the folders "MCAL-HAL-Service_layer-Application_layer" to it.

# Application:

1- The micro-controller will get the time from RTC. "that you have added to the "RTC_INITAL_VALUE" project.

2- if you want to change the Minutes or hours,use the buttons and the time will be changed also in the RTC.

3- If the power is unplugged from the micro-controller it's no problem because the time is saved to the RTC.

---------------------------------------------------------
