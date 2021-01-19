@echo off
Rem GETODAY.BAT - Get today's date into environment var Today in format YYMMDD.
Rem From PC Magazine (User-to-User, Neil J. Rubenking, pp. 343-344), 9
Rem February 1993.
echo. | date > datetmp$.bat
echo set Today=%%4>current.bat
call datetmp$
del datetmp$.bat
del current.bat
SET count=

Rem Loop1 changes Today to -YYYYMMDD
:Loop1
SET old=%Today%
FOR %%v IN (/%Today%) DO SET Today=%%v
FOR %%v IN (/%old%) DO IF '%%v'=='-' GOTO Skip
FOR %%v IN (/%old%) DO IF '%%v%Today%'=='%old%' SET Today=%Today%%%v
:Skip
Rem Echo The value of Today is "%Today%"
SET count=%count%x
IF NOT '%count%'=='xxxxx' GOTO Loop1

Rem Loop2 reduces Today to YYMMDD
:Loop2
FOR %%v IN (/%Today%) DO SET Today=%%v
Rem Echo The value of Today is "%Today%"
SET count=%count%x
IF NOT '%count%'=='xxxxxxxx' GOTO Loop2

FOR %%v IN (old count) DO SET %%v=

