set lib=lib
set bin=bin
set src=src\*.java
set jarname=Salto

set projectlib=D:\Naina\Sprint\Deploy\lib

javac -cp "%lib%\*"   -d    "%bin%"   %src%

jar cf %jarname%.jar -C ".\%bin%" .

copy %jarname%.jar "%projectlib%\%jarname%.jar"

cmd /k