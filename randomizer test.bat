
@echo off
cls
title Port TCP/IP
COLOR 0F
mode con:cols=80 lines=40




REM GENERATE THE ARRAY, RANGE OF 1-30 QUESTIONS

set questions[0]=Q1
set questions[1]=Q2
set questions[2]=Q3
set questions[3]=Q3
set questions[4]=Q4
set questions[5]=Q5
set questions[6]=Q6
set questions[7]=Q7
set questions[8]=Q8
set questions[9]=Q9
set questions[10]=Q10
set questions[11]=Q11
set questions[12]=Q12
set questions[13]=Q13
set questions[14]=Q14
set questions[15]=Q15
set questions[16]=Q16
set questions[17]=Q17
set questions[18]=Q18
set questions[19]=Q19
set questions[20]=Q20
set questions[21]=Q21
set questions[22]=Q22
set questions[23]=Q23
set questions[24]=Q24
set questions[25]=Q25
set questions[26]=Q26
set questions[27]=Q27
set questions[28]=Q28
set questions[29]=Q29
set questions[30]=last index

REM DECLARE FLAGS
set "generateArray=true"
set "dupFlag=false"
set "endCounter=0"
set "index=0"
set /A "i=%RANDOM%*30/32768+1"

REM GENERATE RANDOM NUMBER TO VARIABLE, (30 QUESTIONS, +1 STARTS AT 1 INSTEAD OF ZERO)


REM MAIN VARIABLE TESTING AND SYNTAX

        call echo %%i%% - is the random number
        echo.
        echo.       
        call echo " %%questions[%i%]%% " is the array's random index value (this should be the same "Q" + random number above)
        echo.

        call echo index 0 is "%%index%%" this should be 0
      
        echo.      
        call echo first index is "%!questions[%%index%%]!%" (this should be "0")
        call echo first index value is "%%questions[%i%]%%" (this should be "Q0")
        call echo last index value is "%questions[30]%" ( This should be "last index" )
        
        echo.
        call echo %%index%% is the index counter (This should be "0"^)
        
        set /A "index+=1"
        call echo %%index%% is the new incremented counter (This should be "1"^)

        set /A "endCounter+=1"
        call echo %%endCounter%% is the incremented endCounter (This should be "1"^)
 

echo.


call echo the following is the array list %%questions[%index%]%%
call echo the following is the array list %%questions[%%]%%



echo.
echo.
pause