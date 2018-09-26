/*
 * NeuerVersuch.cpp
 *
 *  Created on: 26.09.2018
 *      Author: ben
 */

#include <unistd.h>
#include <iostream>
#include <SerialStream.h>



#define ARDUINO_BUFFER_SIZE 4

int startPosition = 1500;
int endPosition = 2000;
int speed = 200;

char outChar[6];

int main (int argc, char** argv)
{
	//Create and open the serial port
	LibSerial::SerialStream my_serial_stream;
	my_serial_stream.Open("/dev/ttyUSB0");

	//Set the baudrate
	my_serial_stream.SetBaudRate(LibSerial::BaudRate::BAUD_9600);

	//Setting Character Size
	my_serial_stream.SetCharacterSize(LibSerial::CharacterSize::CHAR_SIZE_8);

	//Setting Number of Stop Bits
	my_serial_stream.SetStopBits(LibSerial::StopBits::STOP_BITS_1);

	//Setting the Parity Type
	my_serial_stream.SetParity(LibSerial::Parity::PARITY_NONE);

	//Setting the Flow-Control Type
	my_serial_stream.SetFlowControl(LibSerial::FlowControl::FLOW_CONTROL_NONE);

	std::cout << "Port eingerichtet!" << std::endl;
	usleep(100000);

	unsigned char buffer[ARDUINO_BUFFER_SIZE];
}
