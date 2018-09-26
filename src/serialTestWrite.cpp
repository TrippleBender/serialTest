/*
 * serialTestWrite.cpp
 *
 *  Created on: 12.09.2018
 *      Author: ben
 */

#include <unistd.h>
#include <iostream>
#include <SerialStream.h>

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

	//Write something!
	/*my_serial_stream << startPosition << std::endl;
	my_serial_stream << "\n" << std::endl;

	my_serial_stream << endPosition << std::endl;
	my_serial_stream << "\n" << std::endl;

	my_serial_stream << speed << std::endl;
	my_serial_stream << "\n" << std::endl;*/
	while(true)
	{
		//char bla[3] = {'a', 'b', 'c'};
		int value[3] = {1700, 2000, 200};
	/*my_serial_stream << value[0] << std::endl;
	my_serial_stream << value[1] << std::endl;*/
	//my_serial_stream << '\n' << std::endl;


		//while(!my_serial_stream.IsDataAvailable())
		//{
			my_serial_stream << value[0] << std::endl;
			my_serial_stream << value[1] << std::endl;
			my_serial_stream << value[2] << std::endl;
			std::cout << "Daten gesendet!" << my_serial_stream.IsDataAvailable() << std::endl;
			usleep(1000000);
		//}

		/*for(int i = 0; ++i; i <= 2)
		{
			my_serial_stream << value[i] << std::endl;
			usleep(10000);
		}*/

	/*outChar[0] = startPosition & 0xFF;
	outChar[1] = startPosition >> 8;

	outChar[2] = endPosition & 0xFF;
	outChar[3] = endPosition >> 8;

	outChar[4] = speed & 0xFF;
	outChar[5] = speed >> 8;

	my_serial_stream.write(outChar, 6);*/





		std::string inString = "";
		int data = 0;

		if(my_serial_stream.IsDataAvailable())
		{
			std::cout << "Daten empfangen!" << std::endl;

			std::getline(my_serial_stream, inString);
			my_serial_stream >> data;
			std::cout << "Speed = " << data << std::endl;

			std::getline(my_serial_stream, inString);
			my_serial_stream >> data;
			std::cout << "Start = " << data << std::endl;

			std::getline(my_serial_stream, inString);
			my_serial_stream >> data;
			std::cout << "Ende = " << data << std::endl;

			usleep(1000000);
		}
		//usleep(1000000);
	}
}
