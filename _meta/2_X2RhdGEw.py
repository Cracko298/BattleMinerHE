def Data6_Start():
    #Edit Data in Bytes Code.
    data_in_byte = b'\x0F\x27' 
    #Bytes to write to file
    Data6 = "Data6"
    #Name of file

    with open(Data6, 'rb+') as binary_file:
      #open file as binary
      binary_file.seek(88) 
      #Move Editing to Offset 33
      binary_file.write(data_in_byte) 
      #Writes the bytes from "data_in_byte"

Data6_Start()