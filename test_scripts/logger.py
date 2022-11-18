#Import pyserial
import serial

# function/class should read the line of data up until the next ping then output a list of the data to be appended to the data to be written to the file. 
# perhaps should write to the file each time the data is read and collected?


class DongleReader():
    ser = serial.Serial()


    def __init__(self, port='/dev/ttyUSB1', baud_rate=115200) -> None :
        try:
            self.ser = serial.Serial(port, baud_rate)    # open serial port at baudrate 115200
            print('Opened port: ',self.ser.name)
        except:
            print('Could not open port, Exiting Program')
            exit()



    def calculate_time_in_ms(self, ticks):
        time = ticks/21e6 * 1000
        return time


    def read_data(self):
        line_data = []

        # need a loop to read all the data of the current ping message. 
        # If two pings are sent in a row with no response?  packet not received
        # if packet received, calculate time to receive and store RSSI

        # TIme to send ping: xxxxx
        # Time to receive pong: xxxxxx
        # received RSSI: xxxxx

        while True:
            line = self.ser.readline()
            line = line.decode() # changing from bytes to string
            line = line[:-1] # removing newline character
            #print('Line Read:',line)

            #store previous data

            data = line[line.find(":")+2:]
            print(data)
            # if message is ping, calculate time to send, append to list
            # if message is pong, calculate time to receive, append to list
            # if message is RSSI, just append to list


            # need a way to break out of this loop after three reads or two consecutive ping messages.
            # if line[1] == line[0], break out because two pings have been read. (may need to have a different list to store messages, or perhaps the dict)
            # else if line[2] == RSSI read, breakout of loop.
            #







def main():
    ## File Information
    test_num = 1;
    
    data_filename = "Latency_Test_1.csv"
    data_header = ['Packet Received', 'Time to Send', 'Time to receive', 'RSSI']
    data_list = []

    settings_filename = "tests_info.csv"
    settings_header= ["Test Number", "Testing Factor", "Location", "Spreading Factor, Coding Rate", "Bandwidth"]


    ### Generating the data to be stored
    dongle = DongleReader()

    while True:
        dongle.read_data()






if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print("  Exit Call")
        exit()
    except Exception as e:
        print("Something went wrong")
        exit()