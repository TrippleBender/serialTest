/*
 * serialTestRead.cpp
 *
 *  Created on: 13.09.2018
 *      Author: ben
 */

#include <unistd.h>
#include <string>
#include <sstream>
#include <iostream>
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
	char inchar;

	int data = 0;

	std::cout << "Daten empfangen!" << std::endl;

	while(true)
	{
		if(my_serial_stream.IsDataAvailable())
		{
			my_serial_stream.get(inchar);

			switch (inchar)
			{
			case 'X':
				std::getline(my_serial_stream, inString);
				my_serial_stream >> data;
				std::cout << "X = " << data << std::endl;
				break;

			case 'Y':
				std::getline(my_serial_stream, inString);
				my_serial_stream >> data;
				std::cout << "Y = " << data << std::endl;
				break;

			default:
				;
				/*std::getline(my_serial_stream, inString);
				my_serial_stream >> data;
				std::cout << "default = " << data << std::endl;*/

			}
			usleep(250000);
		}
	}
}



