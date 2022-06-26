def Data2_Start(): 
    #Edit Data in Bytes Code.
    data_in_byte = b'\x0F\x27' 
    #Bytes to write to file
    Data2 = "Data2"
    #Name of file

    with open(Data2, 'rb+') as binary_file:
      #open file as binary
      binary_file.seek(88) 
      #Move Editing to Offset 33
      binary_file.write(data_in_byte) 
      #Writes the bytes from "data_in_byte"

Data2_Start()