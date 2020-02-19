REM     This script is using the miniterm tool to listen to a port
REM     If you don't know the COM port number, in a command line with the virtualenv activated
REM     execute this: python -m serial.tools.list_ports -v
REM     You will get a list with details about the available ports
REM     Example my Arduino is connected to: USB-SERIAL CH340 (COM5)

call .\bluetooth-socket-env\Scripts\activate
python -m serial.tools.miniterm COM5
REM keep the command line open
cmd /k