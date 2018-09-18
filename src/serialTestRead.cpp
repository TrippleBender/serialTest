/*
 * serialTestRead.cpp
 *
 *  Created on: 13.09.2018
 *      Author: ben
 */

#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <string>
#include <SerialStream.h>


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

	// Wait for data to be available at the serial port.
	while(my_serial_stream.rdbuf()->in_avail() == 0)
	{
		usleep(1000);
	}

	//Read something!

	std::string inString = "";
	const char *str = NULL;

	int data = 0;

	std::cout << "Daten empfangen!" << std::endl;

	while(my_serial_stream.IsDataAvailable())
	{
		//Read
		//my_serial_stream >> inChar;
		std::getline(my_serial_stream, inString);
		/*str = inString;
		data = atoi(str);*/

		//data = atoi(&inString);
		//std::cout << data << std::endl;						//funktioniert auch mit serial.write unter Arduino

		std::cout << inString << std::endl;					//funktioniert nur mit serial.print unter Arduino
		//std::cout << data << std::endl;
		std::cout << "---" << std::endl;
	}
}



