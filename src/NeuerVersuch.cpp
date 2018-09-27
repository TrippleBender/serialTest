/*
 * NeuerVersuch.cpp
 *
 *  Created on: 26.09.2018
 *      Author: ben
 */

#include <stdint.h>
#include <unistd.h>
#include <iostream>
#include <SerialStream.h>



#define ARDUINO_BUFFER_SIZE 10

int i = 0;


/*int startPosition = 1500;
int endPosition = 2000;
int speed = 200;

char outChar[6];*/

int main (int argc, char** argv)
{
	//Create and open the serial port
	LibSerial::SerialStream my_serial_stream;
	my_serial_stream.Open("/dev/ttyUSB0");

	//Set the baudrate
	my_serial_stream.SetBaudRate(LibSerial::BaudRate::BAUD_115200);

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
	my_serial_stream.FlushInputBuffer();

	while(true)
	{
		i++;
		char buffer[ARDUINO_BUFFER_SIZE];
		//std::cout << my_serial_stream.IsDataAvailable() << std::endl;

		if (my_serial_stream.IsDataAvailable())
		{
			char next_char;
			my_serial_stream.FlushInputBuffer();
			do
			{
				my_serial_stream >> next_char;
			} while (next_char != '0');

				my_serial_stream.read(buffer,ARDUINO_BUFFER_SIZE);
				/*if(size  != ARDUINO_BUFFER_SIZE)
				{
					std::cerr << "expected " << ARDUINO_BUFFER_SIZE << "recieved " << size << " bytes from serial communication" << std::endl;
					my_serial_stream.FlushInputBuffer();
				}*/

				my_serial_stream.FlushInputBuffer();

				uint16_t * fp = (uint16_t *) buffer;

				uint16_t rollPosition = fp[0];
				uint16_t pitchPosition = fp[1];

				std::cout << i << std::endl;
				std::cout << "Rollposition = " << rollPosition << std::endl;
				std::cout << "Pitchposition = " << pitchPosition << std::endl;
				std::cout << "3: " << fp[2] << std::endl;
				std::cout << "4: " << fp[3] << std::endl;
				std::cout << "i: " << fp[4] << "\n" << std::endl;
		}

		/*my_serial_stream.FlushInputBuffer();
						std::cerr << "Fehler" << std::endl;*/

		usleep(1000000);

	}
}
