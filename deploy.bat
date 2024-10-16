@echo off

set "root=D:\Naina\Sprint\Mr_Naina"
set "bin=%root%\bin"
set "lib=%root%\lib"


set "temp=%root%\temp"
set "src=%root%\src"
set "target_dir=D:\Naina\Sprint\Deploy\lib"

set "jar_name=Salto"


:: copy all java files to temp directory
for /r "%src%" %%f in (*.java) do (
    xcopy "%%f" "%temp%"
)

:: move to temp to compile all java file
cd "%temp%"
javac -d "%bin%" -cp "%lib%\*" *.java


:: move back to root
cd %root%


:: archive web folder into war file
jar -cvf "%jar_name%.jar" -C "%bin%" .

:: deploy war to server 
copy "%jar_name%.jar" "%target_dir%"

:: remove war and temp
@REM del "%war_name%.war"
rmdir /s /q "%temp%"

echo Deployment complete.