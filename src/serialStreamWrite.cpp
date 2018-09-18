/*
 * serialStreamWrite.cpp
 *
 *  Created on: 07.09.2018
 *      Author: ben
 */

#include <SerialStream.h>

#include <fstream>
#include <iostream>
#include <cstdlib>


int main (int argc, char** argv)
{
	// Determine if an appropriate number of arguments has been provided.
	if (argc < 2)
	{
	    // Error message to the user.
	    std::cerr << "Usage: " << argv[0] << " <filename>" << std::endl;

	    // Exit the program if no input file argument has been given.
	    return 1;
	}

	 // Instantiate a SerialStream object.
	LibSerial::SerialStream serial_stream;

	 // Open the Serial Port at the desired hardware port.
	 serial_stream.Open("/dev/ttyUSB1");

	 // Set the baud rate of the serial port.
	 serial_stream.SetBaudRate(LibSerial::SerialStreamBuf::BAUD_115200);

	 // Set the number of data bits.
	 serial_stream.SetCharSize(LibSerial::SerialStreamBuf::CHAR_SIZE_8);

	 // Turn off hardware flow control.
	 serial_stream.SetFlowControl(LibSerial::SerialStreamBuf::FLOW_CONTROL_NONE);

	 // Disable parity.
	 serial_stream.SetParity(LibSerial::SerialStreamBuf::PARITY_NONE);

	 // Set the number of stop bits.
	// serial_stream.SetStopBits(StopBits::STOP_BITS_1);
	 serial_stream.SetNumOfStopBits(1);

	 // Read characters from the input file and write them to the serial port.
	std::cout << "Writing input file contents to the serial port." << std::endl;
}
