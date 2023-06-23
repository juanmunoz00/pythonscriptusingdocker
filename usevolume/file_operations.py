# file_io.py
from datetime import datetime
current_datetime = datetime.now()
current_time = current_datetime.strftime("%H:%M:%S")

# Read from a file
with open('data.txt', 'a+') as file:
    content = file.read()
    print("Content of the file:")
    print(content)
    content = '\n ' + current_time + ' - Hello, world!'
    file.write(content)
    print(content)

# Write to a file
#with open('output.txt', 'w') as file:
#    file.write('Hello, world!')
#    print("Successfully written to output.txt")
