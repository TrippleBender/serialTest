/*
 * serialWriteRead.cpp
 *
 *  Created on: 20.09.2018
 *      Author: ben
 */

#include <unistd.h>
#include <iostream>
#include <SerialStream.h>

const char outChar = 'T';

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
	usleep(1000000);

	while(true)
	{
		//Write something!
		my_serial_stream << 'T' << std::endl;
		std::cout << "Daten geschrieben!" << std::endl;

		//Read the answer
		std::string inString = "";
		char inchar;
		bool flag = true;

		int data = 0;

		std::cout << "Daten empfangen!" << std::endl;


		while(my_serial_stream.IsDataAvailable() && flag)
		{
			//my_serial_stream.get(inchar);
			std::getline(my_serial_stream, inString);
			my_serial_stream >> inchar;


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

				case 'D':
					std::cout << "Default Arduino!" << std::endl;
					break;

				case 'Z':
					std::cout << "Neue Zeile Arduino" << std::endl;
					break;

				case '\n':
					std::cout << "Neue Zeile" << std::endl;
					break;

				case '\r':
					std::cout << "Zeilenende" << std::endl;
					break;

				default:
					std::cout << "Default: " << inchar << std::endl;
			}

			if(inchar == 'E')									//Terminierung!!
			{
				flag = false;
				my_serial_stream.flush();
			}
		}
		usleep(1000000);
	}
}
