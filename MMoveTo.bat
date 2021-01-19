Rem Echo off
Rem *MMoveTo.bat:  Multiple move TO %1: move %2, %3, %4, etc.
:START
If %1/==/ goto SHOWHOW
Set tmpnm=%1
:DO1
If %2/==/ goto BYEBYE
echo Y | move %2 %tmpnm% > nul
Shift
Goto DO1
:SHOWHOW
Echo on
Rem  MMoveTo target source1 source2...sourceN
Echo off
Goto BYEBYE
:BYEBYE
Set tmpnm=
Rem Echo on
