
@echo off
cls
title Port TCP/IP
COLOR 0F
mode con:cols=80 lines=40


REM GENERATE THE ARRAY, RANGE OF 1-30 QUESTIONS

set questions[0]=index 0
set questions[1]=index 1
set questions[2]=index 2
set questions[3]=index 3
set questions[4]=index 4
set questions[5]=index 5
set questions[6]=index 6
set questions[7]=index 7
set questions[8]=index 8
set questions[9]=index 9
set questions[10]=index 10
set questions[11]=index 11
set questions[12]=index 12
set questions[13]=index 13
set questions[14]=index 14
set questions[15]=index 15
set questions[16]=index 16
set questions[17]=index 17
set questions[18]=index 18
set questions[19]=index 19
set questions[20]=index 20
set questions[21]=index 21
set questions[22]=index 22
set questions[23]=index 23
set questions[24]=index 24
set questions[25]=index 25
set questions[26]=index 26
set questions[27]=index 27
set questions[28]=index 28
set questions[29]=index 29
set questions[30]=last indice

REM DECLARE FLAGS
set "generateArray=true"
set "dupFlag=false"
set "endCounter=0"
set "index=0"

REM GENERATE RANDOM NUMBER TO VARIABLE, (30 QUESTIONS, +1 STARTS AT 1 INSTEAD OF ZERO)


REM WHILE LOOP TO GENERATE RANDOM ARRAY AND TEST FOR NO DUPLICATES


    if %generateArray%==true (
        set /A "i=%RANDOM%*30/32768+1"

         
        call echo %%i%% is the random number
        set "questions[%%index%%]=%%i%%"
        
        call echo we are at array index '%%index%%' 
        
      
        call echo and the value is %!questions[%%index%%]!% in the current array index (this should be zero)
        call echo last indice value is %!questions[30]!% (This should be "last indice")
        
        echo.
        
        call echo %%index%% is the index counter (This should be "0"^)
        
        
        set /A "index+=1"
        call echo %%index%% is the new incremented counter (This should be "1"^)

        set /A "endCounter+=1"
        call echo %%endCounter%% is the incremented endCounter (This should be "1"^)
        
    )



pause