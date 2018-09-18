/*
 * serialTestRead.cpp
 *
 *  Created on: 13.09.2018
 *      Author: ben
 */

#include <iostream>
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
	usleep(200000);

	//Read something!
	char inString;

	int data = 0;

	std::cout << "Daten empfangen!" << std::endl;

	while(1)
	{
		my_serial_stream >> inString;

		//data = atoi(&inString);
		//std::cout << data << std::endl;						//funktioniert auch mit serial.write unter Arduino

		std::cout << inString << std::endl;					//funktioniert nur mit serial.print unter Arduino
		std::cout << "---" << std::endl;
	}
}



