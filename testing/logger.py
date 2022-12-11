import serial, csv, datetime

class DongleReader():
    def __init__(self, port='/dev/ttyUSB1', baud_rate=115200, timeout=27) -> None :
        try:
            self.ser = serial.Serial(port, baud_rate, timeout=timeout)    # open serial port at baudrate 115200, timeout value needs to change based on round trip time
            print('Opened port: ',self.ser.name)
        except:
            print('Could not open port, Exiting Program')
            exit()



    def calculate_time_in_ms(self, ticks):
        time_ms = ticks/21e6 * 1000
        return time_ms


    def read_data(self):
        line_dict = {}

        #loop that reads the messages from a ping cycle
        new_ping = True
        while True:
            line = self.ser.readline()
            try:
                line = line.decode() # changing from bytes to string
            except:
                line_dict['Success'] = False
                print("problem decoding byte")
                break
            line = line.rstrip() #removing newline character
            line = line.replace('\r', '') # removing \r character
            print(line)

            if line == "" and (not new_ping):
                line_dict['Success'] = False
                print("Timeout Occurred")
                break
            else:
                data = line[line.find(":")+1:] #extracting the data value, clock counts, rssi, etc
                key = line[:line.find(":")]     #extracting key for type of data


            if (key == "Time to Send") or (key == "Time to Receive"):
                line_dict[key] = self.calculate_time_in_ms(int(data))
                new_ping = False
            elif (key == "RSSI") or (key == "RSSI Despread"):
                line_dict[key] = int(data)/2            #From Datasheet
                line_dict['Success'] = True
            elif (key == "SNR"):                        
                line_dict[key] = int(data)/4            #From Datasheet
            elif (key == "Error"):
                print("Packet received incorrectly")
                line_dict['Success'] = False                
            elif (key == "Message Size"):
                line_dict[key] = int(data)
                new_ping = True
                break
            elif line == "":
                pass        # timeout happened between last comm and just wait for new comm to be initiated

        #time stamp 
        timestamp = datetime.datetime.now()
        line_dict['Timestamp'] = timestamp.strftime("%H:%M:%S")

        return_dict = line_dict.copy()  # create copy to return to main function
        line_dict.clear()               # clear dictionary for next ping cycle

        return return_dict    


def main():
    ## File Information
    directory = "outdoor_los/"
    test_num = 6
    test_config = 6
    ldro_factor = 1
    #difference = 4
    #distance=50

    
    data_filename =  directory + "Test_" + str(test_num) + ".csv"
    data_header = ['Success', 'Time to Send', 'Time to Receive', 'Message Size', 'RSSI', 'RSSI Despread', 'SNR', 'Timestamp']

    settings_filename = directory + "tests_info.csv"
    settings_header= ["Test Number","Configuration", "Location", "LDRO"]
    settings_data = [str(test_num), str(test_config), "Muizenberg", str(ldro_factor)]

    dongle = DongleReader() # instantiating dongle reader


    ### Open settings file and put the current info 
    # NB: for first run,  uncomment this section, it creates header row
    #with open(settings_filename, mode='w') as settings_file:
     #   settings_writer = csv.writer(settings_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
      #  settings_writer.writerow(settings_header)

    with open(settings_filename, mode='a') as settings_file:
        settings_writer = csv.writer(settings_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        settings_writer.writerow(settings_data)


    ### Generating the data to be stored ###


    #### Read ping pong information from Dongle, append to data file
    
    # opening data file
    count = 0
    with open(data_filename, mode='a') as data_file:
        data_writer = csv.DictWriter(data_file, fieldnames=data_header)
        data_writer.writeheader()

        #reading data and updating file
        while True:
            read_line = dongle.read_data()
            print(read_line)
            count+=1
            print("Number of entries is: ", count)
            # writing to file
            data_writer.writerow(read_line)


#    while True:
#        read_line = dongle.read_data()
#        print(read_line)



if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print("  Exit Call")
        exit()
    #except Exception as e:
    #    print("Something went wrong")
    #    exit()