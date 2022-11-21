import serial, csv

class DongleReader():
    #ser = serial.Serial()

    def __init__(self, port='/dev/ttyUSB1', baud_rate=115200) -> None :
        try:
            self.ser = serial.Serial(port, baud_rate)    # open serial port at baudrate 115200
            print('Opened port: ',self.ser.name)
        except:
            print('Could not open port, Exiting Program')
            exit()



    def calculate_time_in_ms(self, ticks):
        time_ms = ticks/21e6 * 1000
        return time_ms


    def read_data(self):
        line_dict = {}
        line_dict['Success'] = True

        #loop that reads the messages from a ping cycle
        for i in range(6):
            line = self.ser.readline()
            line = line.decode() # changing from bytes to string
            line = line.rstrip() #removing newline character
            line = line.replace('\r', '') # removing \r character
            #print(line)

            data = line[line.find(":")+1:] #extracting the data value, clock counts, rssi, etc
            key = line[:line.find(":")]     #extracting key for type of data

            if (key in line_dict) and (key == 'Time to Send'): #if two pings have been received in a row, thats an error
                line_dict['Success'] = False
                print("Message not received")
                break
            else:
                if (key == "Time to Send") or (key == "Time to Receive"):
                    line_dict[key] = self.calculate_time_in_ms(int(data))
                elif (key == "RSSI") or (key == "RSSI Despread"):
                    line_dict[key] = int(data)/2            #From Datasheet
                elif (key == "SNR"):                        
                    line_dict[key] = int(data)/4            #From Datasheet
                else:
                    line_dict[key] = int(data)


    

        return_dict = line_dict.copy()  # create copy to return to main function
        line_dict.clear()               # clear dictionary for next ping cycle

        return return_dict    



def main():
    ## File Information
    test_num = 5;
    spreading_factor = 7;
    coding_rate = "4/6"
    bandwidth = "500KHz"
    
    data_filename = "Test_" + str(test_num) + ".csv"
    data_header = ['Success', 'Time to Send', 'Time to Receive', 'Message Size', 'RSSI', 'RSSI Despread', 'SNR']

    settings_filename = "tests_info.csv"
    settings_header= ["Test Number", "Testing Factor", "Location", "Tx Power", "Spreading Factor", "Coding Rate", "Bandwidth"]
    settings_data = [str(test_num), "Latency, time to send and get response", "On Desk", "14dBm",str(spreading_factor), coding_rate, bandwidth]

    dongle = DongleReader() # instantiating dongle reader


    ### Open settings file and put the current info 
    # NB: for first run,  uncomment this section, it creates header row
    #with open(settings_filename, mode='w') as settings_file:
    #    settings_writer = csv.writer(settings_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
    #    settings_writer.writerow(settings_header)

    with open(settings_filename, mode='a') as settings_file:
        settings_writer = csv.writer(settings_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        settings_writer.writerow(settings_data)


    ### Generating the data to be stored ###


    #### Read ping pong information from Dongle, append to data file
    
    # opening file
    with open(data_filename, mode='w') as data_file:
        data_writer = csv.DictWriter(data_file, fieldnames=data_header)
        data_writer.writeheader()

        #reading data and updating file
        while True:
            read_line = dongle.read_data()
            print(read_line)

            # writing to file
            data_writer.writerow(read_line)





if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print("  Exit Call")
        exit()
    #except Exception as e:
    #    print("Something went wrong")
    #    exit()