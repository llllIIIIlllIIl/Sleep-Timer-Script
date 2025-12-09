@echo off

:input
set /p timeout_length=Enter in how many minutes you want to go to sleep (max 60): 
rem Check if input is numeric
for /F "tokens=1 delims=0123456789" %%i in ("%timeout_length%") do (
    if not "%%i" == "" (
        echo do you know what a number is?
        goto input
    )
)
rem Check if input is negative
if %timeout_length% lss 0 (
    echo You can't set a countdown to the past.
    goto input
)
set /a timeout_seconds=%timeout_length%*60
if %timeout_seconds% gtr 3600 (
    echo Maximum timeout duration is 60 minutes. You have to go to bed soon so please enter a value less than or equal to 60.
    goto input
)
echo PREPARE TO GO TO SLEEP
timeout /t %timeout_seconds% /nobreak

:countdown
cls
echo GO TO SLEEP NOW
powershell -c "[console]::beep(523,50)"
powershell -c "[console]::beep(587,100)"
powershell -c "[console]::beep(359,50)"
cls
echo GO TO SLEEP NOW !
powershell -c "[console]::beep(698,50)"
powershell -c "[console]::beep(284,500)"
powershell -c "[console]::beep(880,50)"
powershell -c "[console]::beep(698,50)"
powershell -c "[console]::beep(284,100)"
powershell -c "[console]::beep(880,50)"
powershell -c "[console]::beep(698,50)"
powershell -c "[console]::beep(284,100)"
powershell -c "[console]::beep(880,50)"
cls
echo GO TO SLEEP NOW !!
powershell -c "[console]::beep(284,100)"
powershell -c "[console]::beep(880,50)"
powershell -c "[console]::beep(698,50)"
powershell -c "[console]::beep(284,100)"
powershell -c "[console]::beep(880,50)"
powershell -c "[console]::beep(988,100)"
powershell -c "[console]::beep(500,100)"
powershell -c "[console]::beep(600,100)"
powershell -c "[console]::beep(700,100)"
powershell -c "[console]::beep(800,100)"
cls
echo GO TO SLEEP NOW !!!
msg * GO TO SLEEP NOW
timeout /t 1 > nul
goto countdown
