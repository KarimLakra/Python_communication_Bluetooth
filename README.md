#  Bluetooth Communication - Python

To test this examples (made for windows):
- Connect the parts with the Arduino as shown in <img src="https://github.com/KarimLakra/Python_communication_Bluetooth/blob/master/HC-05-Arduino-Test_schematic.png"/>
- Connect the Arduino to the PC using USB connector. 
- Transfer the .ino file located in <a href="https://github.com/KarimLakra/Python_communication_Bluetooth/blob/master/Arduino_Bluetooth/Arduino_Bluetooth.ino" target=_blank>Arduino_Bluetooth</a> folder to the Arduino using the Arduino Software (IDE).
- In the Arduino Software (IDE), from the menu: Tools>Port>Serial ports, choose the port where the Arduino is connected.
- If you don't know the COM port number, double click on ActivateVirtualEnv.bat which will opens a 
Command Line(CLI) and activates a virtual environment for you.
- Execute this: python -m serial.tools.list_ports -v
- You will get a list of available ports with info, you need something like this(My Arduino is connected to COM5): USB-SERIAL CH340 (COM5)
- If you have a paired Bluetooth to the computer, you should get results like(this is not what you need now): Standard Serial over Bluetooth link (COM3)
- Open the Arduino Software (IDE) serial monitor.
- Double click on ActivateVirtualEnv.bat
- Execute in the CLI: python Transmitter.py
- The transfer of data should be printed in both the CLI and (IDE) serial monitor.
- The LED is turned ON in the beginning of the transfer and OFF in the end.

If you get this steps done, you can move to the next example, which uses a CLI to replace the (IDE) serial monitor.

This example uses the <a href="https://pyserial.readthedocs.io/en/latest/tools.html#module-serial.tools.miniterm" target=_blank>miniterm</a> to listen to a specific port, you can explore the many useful options offered by this tool.

- Before executing the Miniterm-listen-to-COM.bat, right click on it and choose edit(any simple editor can do the job) change the port number that you used for the serial monitor.
- Now execute Miniterm-listen-to-COM.bat
- Now the miniterm is listening to the COMx (where the Arduino USB is connected, mine is COM5) save the file.
- Open a CLI using ActivateVirtualEnv.bat
- And execute: python Transmitter.py
- You should see the same as in the first example.

 In this third example we will use a python class to receive data, which can be useful for developping a Python application.
 
- As the step above, open a CLI using ActivateVirtualEnv.bat
- right click on Receiver.py and change the COMx as above(mine is COM5) save the file.
- Open a CLI using ActivateVirtualEnv.bat
- Execute: python Receiver.py
- Open a CLI using ActivateVirtualEnv.bat
- Execute: python Transmitter.py
- You should see the same as in the first and second examples.


<b>Next update we will use a Python GUI to communicate with the Arduino.</b>





Links:
- A very useful video to get started: https://www.youtube.com/watch?v=3tcn496oxnk
- GitHub related to the video above: https://github.com/LessonStudio/Arduino_Bluetooth
- Examples based on: https://pyserial.readthedocs.io/en/latest/index.html
- Class copied from: https://stackoverflow.com/a/56632812/12866855
