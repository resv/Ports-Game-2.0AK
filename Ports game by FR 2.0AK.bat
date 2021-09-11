@echo off
cls
title Port TCP/IP
COLOR 0F
mode con:cols=80 lines=40


REM V1 AUTHOR: FAYCEL RAMDA
REM V2 AUTHOR: ADAM KIM 7/28/21 CYBERSECURITY 2021-NY-14 INSTRUCTOR BRITTANY GRANT, EMMANUAL ESPINAL
REM V3 AUTHOR: (YOU)
REM ORIGINAL SOURCECODE AVAILABLE @ VWWW.GITHUB.COM/RESV
REM NEXT CYCLE STUDENTS CAN MAKE THIS CODE MORE EFFICIENT...

REM ---------------------------v2 UPDATES-----------------------------------------------------------------------------------------
REM -BYPASSED WELCOME SCREEN & NAME INPUT (REDUCE FLUFF AND STORED FOR FUTURE USE IF NEEDED)
REM -REMOVED STATEMENTS WITH "%username&" ACCORDINGLY
REM -ADDED PORTLIST PAGE FOR REFERENCE, CAN BE ACCESSED AT ANY TIME
REM -ADDED NEW PORTS TO PORTLIST BASED ON CURRENT QUESTIONS
REM -FIXED TYPOS, ADDED PROMPTS FOR QUESTIONS W/ MULTIPLE ANSWERS
REM -ADDED QUESTION RANDOMIZER ALGORITHM
REM -MODIFED FINISH PAGE (OLD ONE WAS VERY WEIRD)
REM -MODIFIED DEFAULT WINDOW SIZE TO BE WIDER, MODIFIED BACKGROUND COLOR TO BE EASIER ON THE EYES
REM -ADDED SCORE TO KEEP TRACK DURING RANDOM MODE
REM -ADDED COMMENTS FOR DOCUMENTATION IN SOURCE CODE
REM ------------------------------------------------------------------------------------------------------------------------------


REM ------BYPASSED WELCOME SCREEN------------
REM :welcome
REM echo.-------------------------------------
REM echo         TCP/UDP ports number
REM echo.-------------------------------------
REM echo please enter your name : 
REM set /p username= Name is : 
REM if ==  goto start
REM ------------------------------------------

REM BE ADVISED, THERE ARE 2x LIMIT VARIABLES, MUST CHANGE FOR BOTH IF ADDING MORE Qs
set "limit=30"

REM WE GO RIGHT INTO THE START SELECTION SCREEN
:start
cls
echo -------------------------------------------------------------------------------
echo                          TCP/UDP Port Numbers v2.0B
echo -------------------------------------------------------------------------------
echo.
echo  Welcome to TCP/UDP PORTS TEST
echo. 
echo  %limit% correct consecutive answers will take you to the end
echo. 
echo. (THIS IS STILL BEING TESTED, SUBMIT BUGS TO TELEGRAM DM OR AKIM456@GMAIL.COM)
echo.

REM MODIFIED MENU WORDING, ADDED AN OPTION TO EXIT TEST AND SEE ALL PORTS, ADDED UPDATES OPTION
echo  Please choose a selection:
echo.
echo  [1] to begin test
echo  [2] to exit test
echo  [x] to view port list (Can be used at any time)
echo  [u] to view updates

REM ADDED LINE BREAK FOR CLARITY AND EDITED PROMPT
echo.
set /p choose=Waiting for your selection...
if %choose% == 1 goto begin
if %choose% == 2 goto exit
if %choose% == x goto portList
if %choose% == u goto updates
IF %choose% == "" goto start

REM ADDED PORTLIST PAGE (ADDED PORTS 119,138,162,,445,514,554,1720,2427/2727,5004/5005,5060/5061 BASED ON TEST Qs)
:portList
cls
echo -------------------------------------------------------------------------------
echo                               PORT LIST
echo -------------------------------------------------------------------------------
echo.    FTP^|20/21.......Sends Files
echo.    SSH^|22..........Secure Shell (Secure Remote)
echo.Telenet^|23..........Unsecure Remote Access Console
echo.   SMTP^|25..........Sends Mail
echo.    DNS^|53..........Domain Name Server (Network Phonebook)
echo.
echo.   DHCP^|67/68.......Dynamic Host Configuration Protocol
echo.   TFTP^|69..........Trivial (Not Important)
echo.   HTTP^|80..........UNSECURE Web Access
echo.   POP3^|110.........Rcv Email (Inbox)
echo.   NNTP^|119*........Network News Transport Protocol
echo.
echo.    NTP^|123.........Network Time Protocol (UTC)
echo.NetBios^|137-139*....Network BIOS (Basic Input/Output Services)
echo. IMAPv4^|143.........Mail Stored on a Server (Access from Devices)
echo.   SNMP^|161/162*....Simple Network Management Protocol
echo.   LDAP^|389.........Lightweight Directory Access Protocol
echo.
echo.  HTTPS^|443.........Secure Web Access
echo.    SMB^|445*........Server Message Block
echo.    RSH^|514*........Remote Shell / Syslog
echo.   RTSP^|554*........Real-Time Streaming Protocol
echo.  LDAPS^|636.........LightWeight Directory Access SECURE
echo.
echo.    TCP^|1720*.......Teleconferencing Protocol
echo.   MGCP^|2427/2727*..Media Gateway Control Protocol
echo.    RDP^|3389........Remote Desktop Protocol
echo.    RTP^|5004/5005*..Real-time Transport Protocol
echo.    SIP^|5060/5061*..Session Initiation Protocol
echo.
echo.
echo.*New ports added based on older version game
echo.
pause
goto :start

:updates
cls
echo -------------------------------------------------------------------------------
echo                                   Notes
echo -------------------------------------------------------------------------------
echo V1 Author: FAYCEL RAMDA / ???
echo V2 Author: ADAM KIM / CYBERSECURITY 2021-NY-14
echo INSTRUCTORS: BRITTANY GRANT, EMMANUAL ESPINAL, RAF
echo SOURCECODE @ VWWW.GITHUB.COM/RESV
echo NEXT CYCLE CAN MAKE THIS MORE EFFICIENT...
echo.
echo -------------------------------------------------------------------------------
echo                                v2 UPDATES
echo -------------------------------------------------------------------------------
echo -Randomize mode has been added, questions can now be randomized
echo -Removed welcome screen and username input (removed fluff)
echo -Edited or removed prompts that included usernames (removed fluff)
echo -Added a port list reference page, added more ports based on default questions
echo -Fixed typos
echo -Included prompts for questions that have multiple answers
echo -A user will now have an option to celebrate when completing the test
echo -Enlarged default window size and color scheme to be user friendly
echo -Added more port questions based on COMPTIA STUDY GUIDE (Can add if people want this)
echo.
pause
goto :start


REM "begin" PAGE WILL INITIATE RANDOM ALGORITHM AND GENERATE THE ARRAY
:begin
cls
echo -------------------------------------------------------------------------------
echo                              TCP/UDP Port Numbers
echo -------------------------------------------------------------------------------

echo  In TCP/IP and UDP networks, a port is an 
echo  endpoint to a logical connection and the 
echo  way a client program specifies a specific
echo  server program on a computer in a network.
echo  The port number identifies what type of 
echo  port it is.
echo.
echo.
echo. You will see duplicates, to reinforce you as a learner...
echo.
echo  (Randomizing questions...)
echo.
echo.
echo.



REM CREATED AN ARRAY MANUALLY BECAUSE BATCH FILE ARRAY CREATION IS TOO COMPLEX FOR ME TO MAKE EFFICIENTLY IN MY SHORT TIME
set questions[1]=Q1
set questions[2]=Q2
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
set questions[30]=Q30


REM THIS IS THE RANDOMIZER ALGORYTHM THAT WILL RANDOMIZE AFTER EACH QUESTION (must be added after each question to rerandomize)
set /A "i=%RANDOM%*30/32768+1"
set /A "index+=1"

REM WE USE COUNTERS AND CHECK FOR 30 CORRECT ANSWERS, WE DON'T HAVE LOGIC TO REMOVE DUPLICATE QUESTIONS.
REM DUPLICATE QUESTIONS ARE STILL A GREAT EFFECTIVE METHOD IN REINFORCING MATERIAL ON A LEARNER
REM INDEX IS IMPORTANT TO KEEP QUESTION # TO DYNAMICALLY CHANGE.

REM DECLARE FLAGS:
set "generateArray=true"
set "dupFlag=false"
set "endCounter=0"
set "index=1"
set "limit=30"

REM THIS SMALL SECTION HERE IS WHAT NEEDS TO BE ADDED TO EACH Q
REM THIS INCREMENTS ENDCOUNTER, IF REACHED THE LIMIT(30 QUESTIONS), we will CELEBRATE, ELSE WE GO TO NEXT RANDOM Q 
REM set /A "i=%RANDOM%*30/32768+1"  (30 needs to be changed to more questions)
REM set /A "endCounter+=1"
REM (IF END COUNTER = limit, go to celebrate ELSE go to Q%i%)


pause 
cls
goto Q8


REM ------------------ALL QUESTION COMMENTS-----------------------------------
REM -QUESTIONS 1-30, EACH QUESTION NOW HAS "x" OPTION TO "goto portList"
REM -Q7 FIXED TYPO "HHTPS"
REM -PROMPT WORDING ADDED TO NOTIFY USER THERE ARE MORE THAN 1 ANSWER
REM ALL IF STATEMENTS RECODED FOR "AND" OPERATORS, FLOW CONTROL IN BATCH IS WEIRD, NO LOGICAL "ANDS" ARE POSSILBLE?!
REM ALL IF STATEMENTS ARE NOT NESTED FOR BETTER LEGIBILITY, ALTHOUGH COULD BE NESTED IF YOU WISH...

echo ----------------------------------------
echo               let's begin
echo ----------------------------------------

:Q1
echo -------------------------------------------------------------------------------
echo Question %index%           					(Score %endCounter% / %limit%)
echo SSH (Secure Shell)- TCP/UDP
echo used for secure logins, file transfers
echo (scp, sftp) and port forwarding
echo -------------------------------------------------------------------------------

echo . 25
echo . 21
echo . 22
echo . 110

	set /p answer1= SSH port number is :
		IF %answer1% == 22 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer1% == 22 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
				set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer1% == x (  
				cls
				goto portList
		)
		IF NOT %answer1% == 22 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)
echo.
echo.
echo.


:Q2
echo -----------------------------------------
echo Question %index%                (Score %endCounter% / %limit%)
echo NTP (Network Time Protocol) - UDP
echo used for time synchronization
echo -----------------------------------------

echo . 23
echo . 143
echo . 123
echo . 443

	set /p answer2= NTP port number is :
		IF %answer2% == 123 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer2% == 123 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer2% == x (  
				cls
				goto portList
		)
		IF NOT %answer2% == 123 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)

:Q3
echo -------------------------------------------
echo Question %index%                (Score %endCounter% / %limit%)
echo TFTP (Trivial File Transfer Protocol) - UDP
echo is a simple protocol for transferring files
echo -------------------------------------------

echo . 443
echo . 67
echo . 69
echo . 161

	set /p answer3= TFTP port number is :
		IF %answer3% == 69 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer3% == 69 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer3% == x (  
				cls
				goto portList
		)
		IF NOT %answer3% == 69 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q4
echo -------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo Telnet - TCP-UDP
echo is a client-server protocol, based on a reliable
echo connection-oriented transport. Typically, this 
echo protocol is used to establish a connection 
echo to Transmission 
echo -------------------------------------------------

echo . 22
echo . 80
echo . 110
echo . 23

	set /p answer4= Telnet port number is :
		IF %answer4% == 23 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer4% == 23 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer4% == x (  
				cls
				goto portList
		)
		IF NOT %answer4% == 23 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q5
echo -------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo DNS (Domain Name System) - TCP, UDP
echo DNS is how domain names are translated into 
echo IP addresses, and DNS also controls email delivery. 
echo DNS is what allows you to use your web browser to 
echo find web sites as well as send and receive email.
echo -------------------------------------------------

echo . 23
echo . 143
echo . 53
echo . 123

	set /p answer5= DNS port number is :
		IF %answer5% == 53 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer5% == 53 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer5% == x (  
				cls
				goto portList
		)
		IF NOT %answer5% == 53 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q6
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo HTTP (Hypertext Transfer Protocol) - TCP
echo HTTP is the underlying protocol used by the World Wide
echo Web and this protocol defines how messages are formatted and
echo transmitted, and what actions Web servers and browsers
echo should take in response to various commands.
echo find web sites as well as send and receive email.
echo -----------------------------------------------------------

echo . 156
echo . 80
echo . 178
echo . 203

	set /p answer6= HTTP port number is :
		IF %answer6% == 80 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer6% == 80 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer6% == x (  
				cls
				goto portList
		)
		IF NOT %answer6% == 80 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q7
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo HTTPS (Hypertext Transfer Protocol Secure) - TCP
echo HTTPS is an extension of HTTP and is used for secure 
echo communication over a digital network, most often the Internet. 
echo --------------------------------------------------------------

echo . 123
echo . 53
echo . 143
echo . 443

	set /p answer7= HTTPS port number is :
		IF %answer7% == 443 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer7% == 443 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer7% == x (  
				cls
				goto portList
		)
		IF NOT %answer7% == 443 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q8
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo FTP (File Transfer Protocol) - TCP
echo (FTP) is a standard network protocol used for the transfer of
echo computer files between a client and server on a computer network. 
echo FTP is built on a client-server model architecture using separate 
echo control and data connections between the client and the server. 
echo --------------------------------------------------------------
echo.
echo. (There are two valid answers)
echo . 22
echo . 20
echo . 21
echo . 25

	set /p answer8= FTP port number is : 
		IF %answer8% == 20 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT! (but do you know the other one though?)
				pause
				cls
				goto finish
		)
		IF %answer8% == 21 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT! (but do you know the other one though?)
				pause
				cls
				goto finish
		)
		IF %answer8% == 20 IF %answer8% == 21 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer8% == x (  
				cls
				goto portList
		)
		IF NOT %answer8% == 20 IF NOT %answer8% == 21(  
		echo That is incorrect!
		pause 
		cls
		goto start
		)


:Q9
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo IMAP4 (Internet Message Access Protocol 4) - TCP
echo A programming interface (API) from the IETF that enables a user's
echo to access the mail serveremail program
echo --------------------------------------------------------------

echo . 443
echo . 23
echo . 143
echo . 123

	set /p answer9= IMAP4 port number is : 
		IF %answer9% == 143 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer9% == 143 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer9% == x (  
				cls
				goto portList
		)
		IF NOT %answer9% == 143 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q10
echo ----------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SMTP (Simple Mail Transport Protocol) TCP-UDP
echo used for e-mail routing between mailservers
echo ----------------------------------------------

echo . 443
echo . 143
echo . 22
echo . 25

	set /p answer10= SMTP port number is : 
		IF %answer10% == 25 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer10% == 25 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer10% == x (  
				cls
				goto portList
		)
		IF NOT %answer10% == 25 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q11
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SCP (Secure Copy)- TCP
echo Provides a secure file-transfer service over an SSH connection
echo and offers a file�s original date and time information,
echo which is not available with FTP
echo -------------------------------------------------------------

echo . 25
echo . 21
echo . 22
echo . 110

	set /p answer11= SCP port number is :
		IF %answer11% == 22 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer11% == 22 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer11% == x (  
				cls
				goto portList
		)
		IF NOT %answer11% == 22 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q12
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo RDP (Remote Desktop Protocol) - TCP
echo A Microsoft protocol that allows a user to view and 
echo control the desktop of a remote computer
echo -----------------------------------------------------------

echo . 23
echo . 143
echo . 3389
echo . 443

	set /p answer12= RDP port number is :
		IF %answer12% == 3389 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer12% == 3389 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer12% == x (  
				cls
				goto portList
		)
		IF NOT %answer12% == 3389 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q13
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo RTSP (Real-Time Streaming Protocol) - TCP, UDP
echo Communicates with a media server (for example, a video server)
echo and controls the playback of the server�s media files 
echo --------------------------------------------------------------

echo . 443
echo . 67
echo . 554
echo . 161

	set /p answer13= RTSP port number is :
		IF %answer13% == 554 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer13% == 554 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer13% == x (  
				cls
				goto portList
		)
		IF NOT %answer13% == 554 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q14
echo -------------------------------------------------
echo Question %index%
echo IMAP (Internet Message Access Protocol) - TCP
echo Retrieves email from an email server
echo -------------------------------------------------

echo . 143
echo . 80
echo . 110
echo . 23


	set /p answer14= IMAP port number is :
		IF %answer14% == 143 IF %endCounter% == %limit% (
						echo YES THAT IS CORRECT!
						pause
						cls
						goto finish
				)
				IF %answer14% == 143 ( 
						echo Correct keep going
						set /A "endCounter+=1"
						set /A "i=%RANDOM%*30/32768+1"
						set /A "index+=1"
						pause 
						cls
						goto Q%i%
				)
				IF %answer14% == x (  
						cls
						goto portList
				)
				IF NOT %answer14% == 143 (  
				echo That is incorrect!
				pause 
				cls
				goto start
				)



:Q15
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo NNTP (Network News Transport Protocol) - TCP
echo Supports the posting and reading of articles on Usenet news servers
echo -------------------------------------------------------------

echo . 23
echo . 143
echo . 53
echo . 119

	set /p answer15= NNTP port number is :
		IF %answer15% == 119 IF %endCounter% == %limit% (
						echo YES THAT IS CORRECT!
						pause
						cls
						goto finish
				)
				IF %answer15% == 119 ( 
						echo Correct keep going
						set /A "endCounter+=1"
						set /A "i=%RANDOM%*30/32768+1"
						set /A "index+=1"
						pause 
						cls
						goto Q%i%
				)
				IF %answer15% == x (  
						cls
						goto portList
				)
				IF NOT %answer15% == 119 (  
				echo That is incorrect!
				pause 
				cls
				goto start
				)



:Q16
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo rsh (Remote Shell) - TCP
echo Allows commands to be executed on a computer from a remote user
echo (ALSO KNOWN TO BE SYSLOG)
echo --------------------------------------------------------------

echo . 156
echo . 514
echo . 178
echo . 203

	set /p answer16= rsh port number is : 
		IF %answer16% == 514 IF %endCounter% == %limit% (
						echo YES THAT IS CORRECT!
						pause
						cls
						goto finish
				)
				IF %answer16% == 514 ( 
						echo Correct keep going
						set /A "endCounter+=1"
						set /A "i=%RANDOM%*30/32768+1"
						set /A "index+=1"
						pause 
						cls
						goto Q%i%
				)
				IF %answer16% == x (  
						cls
						goto portList
				)
				IF NOT %answer16% == 514 (  
				echo That is incorrect!
				pause 
				cls
				goto start
				)



:Q17
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo POP3 (Post Office Protocol Version 3) - TCP
echo Retrieves email from an email server 
echo --------------------------------------------------------------

echo . 123
echo . 53
echo . 143
echo . 110

	set /p answer17=  POP3 port number is : 
		IF %answer17% == 110 IF %endCounter% == %limit% (
						echo YES THAT IS CORRECT!
						pause
						cls
						goto finish
				)
				IF %answer17% == 110 ( 
						echo Correct keep going
						set /A "endCounter+=1"
						set /A "i=%RANDOM%*30/32768+1"
						set /A "index+=1"
						pause 
						cls
						goto Q%i%
				)
				IF %answer17% == x (  
						cls
						goto portList
				)
				IF NOT %answer17% == 110 (  
				echo That is incorrect!
				pause 
				cls
				goto start
				)



:Q18
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SNMP (Simple Network Management Protocol) - UDP
echo Used to monitor and manage network devices 
echo --------------------------------------------------------------

echo . 22
echo . 161
echo . 53
echo . 25

set /p answer18= SNMP port number is : 
IF %answer18% == 161 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer18% == 161 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer18% == x (  
				cls
				goto portList
		)
		IF NOT %answer18% == 161 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q19
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SNMP Trap (Simple Network Management Protocol Trap) - TCP, UDP
echo A notification sent from an SNMP agent to an SNMP manager
echo --------------------------------------------------------------
echo (Choose the best answer)
echo . 162
echo . 23
echo . 143
echo . 123

set /p answer19= SNMP Trap port number is : 
IF %answer19% == 162 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer19% == 162 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer19% == x (  
				cls
				goto portList
		)
		IF NOT %answer19% == 162 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)
	


:Q20
echo --------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SNTP (Simple Network Time Protocol) - UDP
echo Supports time synchronization among network devices, 
echo similar to Network Time Protocol (NTP),
echo although SNTP uses a less complex algorithm in its calculation 
echo and is slightly less accurate than NTP
echo --------------------------------------------------------------

echo . 25
echo . 123
echo . 22
echo . 110

set /p answer20= SNTP port number is :
IF %answer20% == 123 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer20% == 123 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer20% == x (  
				cls
				goto portList
		)
		IF NOT %answer20% == 123 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)


REM XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX FLAGGED FOR A LATER FIX
:Q21
echo ------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo NetBIOS (Network Basic Input/Output System) - TCP, UDP ( it has 3 ports)
echo Provides network communication services for LANs that use NetBIOS
echo ----------------------------------------------------------
echo (There are 3 valid answers)
echo . TCP 139  
echo . UDP 137
echo . TCP 443
echo . UDP 138

set /p answer21= NetBIOS port number is :
set result=false
if %answer21% == 139 set result=true
if %answer21% == 137 set result=true
if %answer21% == 138 set result=true
if "%result%" == "true" ( 
	echo Correct keep going
	pause 
	cls
	goto Q22 
)
if %answer21% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)

REM XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX FLAGGED FOR A LATER FIX

:Q22
echo -----------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo DHCP (Dynamic Host Configuration Protocol) - UDP
echo Dynamically assigns IP address information
echo (for example, IP address, subnet mask, DNS server�s IP address,
echo and default gateway�s IP address) to a network device
echo ---------------------------------------------------------
echo (There are 2 valid answers)
echo . 67
echo . 68
echo . 65
echo . 61

set /p answer22= DHCP port number is :
set result=false
if %answer22% == 67 set result=true
if %answer22% == 68 set result=true
if "%result%" == "true" ( 
	echo Correct keep going
	pause 
	cls
	goto Q23 
)
if %answer22% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)
	


:Q23
echo -------------------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo H.323 - TCP
echo A signaling protocol that provides multimedia communications over a network
echo -----------------------------------------------------------------------

echo . 1720
echo . 80
echo . 110
echo . 23

set /p answer23= H.323 port number is :
IF %answer23% == 1720 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer23% == 1720 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer23% == x (  
				cls
				goto portList
		)
		IF NOT %answer23% == 1720 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)
	


:Q24
echo ----------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo LDAP (Lightweight Directory Access Protocol) - TCP
echo Provides directory services (for example, a user directory that
echo includes username, password, email, 
echo and phone number information) to network clients
echo ---------------------------------------------------------------

echo . 389
echo . 143
echo . 53
echo . 123

set /p answer24= LDAP port number is :
IF %answer24% == 389 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer24% == 389 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer24% == x (  
				cls
				goto portList
		)
		IF NOT %answer24% == 389 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)



:Q25
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo LDAPS (Lightweight Directory Access Protocol over SSH) - TCP
echo A secured version of LDAP
echo ------------------------------------------------------------

echo . 156
echo . 636
echo . 178
echo . 203

set /p answer25= LDAPS port number is : 
IF %answer25% == 636 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer25% == 636 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer25% == x (  
				cls
				goto portList
		)
		IF NOT %answer25% == 636 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)


REM XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX FLAGGED FOR LATER
:Q26
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo MGCP (Media Gateway Control Protocol) - UDP 
echo Used as a call control and communication protocol
echo for Voice over IP networks 
echo --------------------------------------------------------------
echo (There are two valid answers)
echo . 137
echo . 2427
echo . 143
echo . 2727

set /p answer26= MGCP port number is : 
set result=false
if %answer26% == 2427 set result=true
if %answer26% == 2727 set result=true
if "%result%" == "true" ( 
	echo Correct keep going
	pause 
	cls
	goto Q27 
)
if %answer26% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)


REM XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX FLAGGED FOR LATER

:Q27
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo RTP (Real-time Transport Protocol) - TCP, UDP
echo Used for delivering media-based data 
echo (such as Voice over IP) through the network 
echo --------------------------------------------------------------

echo . 5004
echo . 1720
echo . 5005
echo . 137

set /p answer27= RTP port number is : 
set result=false
if %answer27% == 5004 set result=true
if %answer27% == 5005 set result=true

if "%result%" == "true" ( 
	echo Correct keep going
	pause 
	cls
	goto Q28 
)
if %answer27% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q28
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SFTP (Secure FTP) -TCP
echo Provides FTP file-transfer service over an SSH connection
echo --------------------------------------------------------------

echo . 443
echo . 23
echo . 143
echo . 22

set /p answer28= SFTP port number is : 
IF %answer28% == 22 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer28% == 22 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer28% == x (  
				cls
				goto portList
		)
		IF NOT %answer28% == 22 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)
	

REM XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX flaggged for later
:Q29
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SIP (Session Initiation Protocol) - TCP, UDP
echo Used to create and end sessions for one or more media connections, 
echo including Voice over IP calls
echo --------------------------------------------------------------
echo (There are two valid answers)
echo . TCP 5061
echo . TCP 137
echo . UDP 5060
echo . UDP 1720

set /p answer29=  SIP port number is : 
set result=false
if %answer29% == 5061 set result=true
if %answer29% == 5060 set result=true

if "%result%" == "true" ( 
	echo Correct keep going
	pause 
	cls
	goto Q30 
)
if %answer29% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q30
echo -------------------------------------------------------------
echo Question %index%                 (Score %endCounter% / %limit%)
echo SMB (Server Message Block) - TCP 445 
echo Used to share files, printers, and other network resources
echo --------------------------------------------------------------

echo . 443
echo . 143
echo . 22
echo . 445

set /p answer30= SMB port number is : 
IF %answer30% == 445 IF %endCounter% == %limit% (
				echo YES THAT IS CORRECT!
				pause
				cls
				goto finish
		)
		IF %answer30% == 445 ( 
				echo Correct keep going
				set /A "endCounter+=1"
				set /A "i=%RANDOM%*30/32768+1"
                set /A "index+=1"
				pause 
				cls
				goto Q%i%
		)
		IF %answer30% == x (  
				cls
				goto portList
		)
		IF NOT %answer30% == 445 (  
		echo That is incorrect!
		pause 
		cls
		goto start
		)


REM SET NEW VARIABLE FOR FINISH PAGE TO USE IT'S OWN VARIABLE INSTEAD OF CARRY IT FROM Q30. 
REM REMOVED USERNAME VARIABLE FLUFF, CHANGED USER INPUT VARIABLE FOR CONTINUITY
REM ADDED OPTION FOR USER TO EXIT OR EXIT AND CONGRATS MUSIC

:finish
echo ----------------------FINISH---------------------------
echo I'M PROUD OF YOU
echo.
REM echo %username%
echo Please choose a selection:
echo.
echo [1] to Retake test
echo.
echo [2] to exit test
echo.
echo [3] to exit test and celebrate
echo -------------------------------------------------------

set /p finish= CHOICE : 
if %finish% == 1 ( 
	cls
	goto begin
)
if %finish% == 2 ( 
	cls
	goto exit
)
if %finish% == 3 (  
	echo.
	echo.
	echo You deserve this
	echo.
	echo Press any key to start the celebration!
	echo.
	echo.
	pause 
	cls
	goto celebrate
)
if %finish% == x (
    cls
	goto portList
)
:exit
cls
exit


:celebrate
REM OKAY THIS IS SOME WEIRD IMAGE REDIRECT ON TO THE USER FROM PRIOR DEVELOPER....REMOVED FOR SOMETHING MORE PLEASING AND TRUSTED
REM start https://www.hackread.com/wp-content/uploads/2012/12/Barbaros-DZ-Algerian-Hacker.png

start https://youtu.be/SC4xMk98Pdc?t=37

exit

