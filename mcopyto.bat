Rem Echo off
Rem  Multiple COPY TO %1: copy %2, %3, %4, etc.
Rem     * Copyright 1990, Devon H. McCormick * All rights reserved *
:START
If %1/==/ goto SHOWHOW
Set tmpnm=%1
:DO1
If %2/==/ goto BYEBYE
Copy %2 %tmpnm% > nul
Shift
Goto DO1
:SHOWHOW
Echo on
Rem  MCOPY target source1 source2...sourceN
Echo off
Goto BYEBYE
:BYEBYE
Set tmpnm=
Rem Echo on

