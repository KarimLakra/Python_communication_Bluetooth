call .\bluetooth-socket-env\Scripts\activate
echo[
echo Some useful tools:
echo python -m serial.tools.miniterm COM5   # Open the miniterm to listen to COM5
echo python -m serial.tools.list_ports      # list available ports
echo python -m serial.tools.list_ports -v   # list available ports with info
echo[
echo For more info: https://pyserial.readthedocs.io/en/latest/tools.html#miniterm
echo[
echo[

REM keep the command line open
cmd /k
