/*
 * serialTilstScanner.cpp
 *
 *  Created on: 19.09.2018
 *      Author: ben
 */

#include <stdint.h>
#include <unistd.h>
#include <iostream>
//#include <ros/ros.h>
#include <SerialStream.h>

int main (int argc, char** argv)
{
	//Create and open the serial port
	LibSerial::SerialStream my_serial_stream;
	my_serial_stream.Open("/dev/ttyUSB0");

	//Set the baudrate
	my_serial_stream.SetBaudRate(LibSerial::BaudRate::BAUD_1152000);

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

	int startPosition = 0;
	int endPosition = 0;
	int speed = 0;

	bool i = 1;

	std::string inString = "";
	char inchar;
	char inChar[4];
//char outChar[6];											//I
	uint16_t outBuffer[3];								//II

	//start scan
	while(true)
	{
		/*std::cout << "Startposition: " << std::endl;
		std::cin >> startPosition;

		std::cout << "Endposition: " << std::endl;
		std::cin >> endPosition;

		std::cout << "Geschwindigkeit: " << std::endl;
		std::cin >> speed;*/

		startPosition = 1499;
		endPosition = 2122;
		speed = 215;

		if (startPosition <= 2280 && startPosition >= 1400)
		{
			if (endPosition <= 2280 && endPosition >= startPosition)
			{
				if (speed <= 1023 && speed >= 20)
				{
					/*outChar[0] = char(startPosition & 0x00FF);							//I
					outChar[1] = char((startPosition >> 8) & 0x00FF);
					outChar[2] = '\n';

					outChar[3] = char(endPosition & 0x00FF);
					outChar[4] = char((endPosition >> 8) & 0x00FF);
					outChar[5] = '\n';

					outChar[6] = char(speed & 0x00FF);
					outChar[7] = char((speed >> 8) & 0x00FF);
					outChar[8] = '\n';

					my_serial_stream.write(outChar, 6);*/

					/*my_serial_stream << startPosition << std::endl;					//II
					my_serial_stream << endPosition << std::endl;
					my_serial_stream << speed << std::endl;*/

					outBuffer[0] = startPosition;															//III
					outBuffer[1] = endPosition;
					outBuffer[2] = speed;

					my_serial_stream << startPosition << std::endl;
					my_serial_stream << endPosition << std::endl;
					my_serial_stream << speed << std::endl;


					/*for (int i = 0; i <= 2; i++)															//IV
					{
						my_serial_stream << outBuffer[i] << std::endl;
					}*/

					std::cout << "Daten geschrieben!" << std::endl;
				}
				else
				{
					std::cerr << "Falsche Geschwindigkeit!" << std::endl;
				}
			}
			else
			{
				std::cerr << "Falsche Endposition!" << std::endl;
			}
		}
		else
		{
			std::cerr << "Falsche Startposition!" << std::endl;
		}



		while(my_serial_stream.IsDataAvailable())
			{
			int data = 0;
				//my_serial_stream.read(inChar, 4);
			std::getline(my_serial_stream, inString);
						my_serial_stream >> data;
						std::cout << "X = " << data << std::endl;
			}

		/*uint16_t pitchPosition = uint16_t(inChar[0]) | (uint16_t(inChar[1]) << 8);
		uint16_t rollPosition = uint16_t(inChar[2]) | (uint16_t(inChar[3]) << 8);

		std::cout << "Pitch: " << pitchPosition << std::endl;
		std::cout << "Roll: " << rollPosition << std::endl;*/

		usleep(100000);
	}
}

	/*	while(true)
		{
			//std::cout << "Lesen!" << std::endl;
			int pitchPosition;
			int rollPosition;

			if(my_serial_stream.IsDataAvailable())
			{
			std::getline(my_serial_stream, inString);
			my_serial_stream >> pitchPosition;

			std::getline(my_serial_stream, inString);
			my_serial_stream >> rollPosition;

			std::cout << "Pitch = " << pitchPosition << std::endl;
			std::cout << "Roll: " << rollPosition << std::endl;
			}
		}
	}*/




