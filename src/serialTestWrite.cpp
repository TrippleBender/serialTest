/*
 * serialTestWrite.cpp
 *
 *  Created on: 12.09.2018
 *      Author: ben
 */

#include <iostream>
#include <SerialStream.h>

int main (int argc, char** argv)
{
	//Create and open the serial port
	LibSerial::SerialStream my_serial_stream;
	my_serial_stream.Open("/dev/ttyACM0");

	//Set the baudrate
	my_serial_stream.SetBaudRate(LibSerial::SerialStreamBuf::BAUD_9600);

	//Setting Character Size
	my_serial_stream.SetCharSize(LibSerial::SerialStreamBuf::CHAR_SIZE_8);

	//Setting Number of Stop Bits
	my_serial_stream.SetNumOfStopBits(1);

	//Setting the Parity Type
	my_serial_stream.SetParity(LibSerial::SerialStreamBuf::PARITY_NONE);

	//Setting the Flow-Control Type
	my_serial_stream.SetFlowControl(LibSerial::SerialStreamBuf::FLOW_CONTROL_NONE);

	std::cout << "Port eingerichtet!" << std::endl;

	//Write something!
	my_serial_stream << "1700" << std::endl;
	usleep(1000000);
	my_serial_stream << "\n" << std::endl;
	std::cout << "Daten geschrieben!" << std::endl;

	//Read something!
	char inString;
	int data = 0;
	std::cout << "Daten empfangen!" << std::endl;

	while(1)
	{
		my_serial_stream >> inString;

		//if(inString == '\n')
		//{
		//	std::cout << "Position: " << std::endl;
			std::cout << (int)inString << std::endl;
		//	std::cout << data << std::endl;
		//}
		//else
		//{
		//	data = inString;
		//}
	}
}
