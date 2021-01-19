@echo off
REM rmxs.bat: remove excess files left over from emacs.
If %1/==/ goto DELETEM
cd %1
:DELETEM
if exist *~ del *~
if exist ".#*" del ".#*"
