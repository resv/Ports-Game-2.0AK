@echo off
cls
title Port TCP/IP
COLOR 0F
mode con:cols=80 lines=40


REM V1 AUTHOR: FAYCEL RAMDA
REM V2 AUTHOR: ADAM KIM 7/28/21 CYBERSECURITY 2021-NY-14 
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
REM -MODIFED FINISH PAGE
REM -MODIFIED DEFAULT WINDOW SIZE TO BE WIDER, MODIFIED BACKGROUND COLOR TO BE EASIER ON THE EYES
REM -ADDED COMMENTS FOR DOCUMENTATION
REM ------------------------------------------------------------------------------------------------------------------------------


REM ------BYPASSED WELCOME SCREEN------------
REM :welcome
REM echo.-------------------------------------
REM echo         TCP/UDP ports Number
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
echo.-------------------------------------
echo       TCP/UDP ports Number v2.0
echo.-------------------------------------
echo.
echo Welcome to TCP/UDP PORTS TEST
echo. 
echo %limit% correct consecutive answers will take you to the end
echo. 
echo.
echo.

REM MODIFIED MENU WORDING, ADDED AN OPTION TO EXIT TEST AND SEE ALL PORTS, ADDED UPDATES OPTION
echo Please choose a selection:
echo.
echo [1] to begin test
echo [2] to exit test
echo [x] to view port list (Can be used at any time)
echo [u] to view updates

REM ADDED LINE BREAK FOR CLARITY AND EDITED PROMPT
echo.
set /p choose=Waiting for your choice...
if %choose% == 1 goto begin
if %choose% == 2 goto exit
if %choose% == x goto portList
if %choose% == u goto updates

REM ADDED PORTLIST PAGE (ADDED PORTS 119,138,162,,445,514,554,1720,2427/2727,5004/5005,5060/5061 BASED ON TEST Qs)
:portList
cls
echo.-------------------------------------
echo         PORT LIST
echo.-------------------------------------
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
echo.*New ports added based on questions
echo.
pause
goto :start

:updates
cls
echo ------------------------------Notes-----------------------------------------
echo V1 Author: FAYCEL RAMDA
echo V2 Author: ADAM KIM / CYBERSECURITY 2021-NY-14 
echo SOURCECODE @ VWWW.GITHUB.COM/RESV
echo NEXT CYCLE CAN MAKE THIS MORE EFFICIENT...
echo.
echo ---------------------------v2 UPDATES---------------------------------------
echo -Randomize mode has been added, questions can now be randomized
echo -Removed welcome screen and username input (removed fluff)
echo -Edited or removed prompts that included usernames (removed fluff)
echo -Added a port list reference page, added more ports based on questions
echo -Fixed typos on certain questions
echo -Included prompts for questions that have multiple answers
echo -A user will now have an option to celebrate when completing the test
echo -Enlarged default window size and color scheme to be user friendly
echo ----------------------------------------------------------------------------
echo.
pause
goto :start


REM "begin" PAGE WILL INITIATE RANDOM ALGORITHM
:begin
cls
echo.----------------------------------------
echo           TCP/UDP ports Number
echo.----------------------------------------

echo In TCP/IP and UDP networks, a port is an 
echo endpoint to a logical connection and the 
echo way a client program specifies a specific
echo server program on a computer in a network.
echo The portnumber identifies what type of 
echo port it is.
echo.
echo.
echo (Randomizing questions...)
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

REM WE USE COUNTERS AND CHECK FOR 30 CORRECT ANSWERS, WE DON'T HAVE LOGIC TO REMOVE DUPLICATE QUESTIONS.
REM THIS METHOD IS STILL EFFECTIVE IN REINFORCING MATERIAL ON A LEARNER

REM DECLARE FLAGS:
set "generateArray=true"
set "dupFlag=false"
set "endCounter=0"
set "index=0"
set "limit=1"

REM THIS SMALL SECTION HERE IS WHAT NEEDS TO BE ADDED TO EACH Q
REM THIS INCREMENTS END COUNTER, IF REACHED THE LIMIT, we will CELEBRATE, ELSE WE GO TO NEXT RANDOM Q 
REM set /A "i=%RANDOM%*30/32768+1"
REM set /A "endCounter+=1"
REM (IF END COUNTER = limit, go to celebrate ELSE go to Q%i%)


pause 
cls
goto Q1


REM ------------------ALL QUESTION COMMENTS-----------------------------------
REM -QUESTIONS 1-30, EACH QUESTION NOW HAS "x" OPTION TO "goto portList"
REM -Q7 FIXED TYPO "HHTPS"
REM -PROMPT WORDING ADDED TO NOTIFY USER THERE ARE MORE THAN 1 ANSWER
REM 

echo ----------------------------------------
echo               let's begin
echo ----------------------------------------

:Q1
echo -----------------------------------------
echo Question 1
echo SSH (Secure Shell)- TCP/UDP
echo used for secure logins, file transfers
echo (scp, sftp) and port forwarding
echo -----------------------------------------

echo . 25
echo . 21
echo . 22
echo . 110

set /p answer1= SSH port Number is :
if %answer1% == 22 ( 
	echo Correct keep going
	set /A "endCounter+=1"
	pause 
	cls
	goto Q2
)
if ((%answer1% == 22) AND (%endCounter% == %limit%))(
		echo YES THAT IS CORRECT!
		pause
		cls
		goto celebrate
)
if %answer1% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q2
echo -----------------------------------------
echo Question 2
echo NTP (Network Time Protocol) - UDP
echo used for time synchronization
echo -----------------------------------------

echo . 23
echo . 143
echo . 123
echo . 443
set /p answer2= NTP port Number is :
if %answer2% == 123 ( 
	set /A "endCounter+=1")

if ((%answer2% == 123) && (%endCounter% == %limit%))(
	echo YES THAT IS CORRECT!
	pause
	cls
	goto celebrate
	)else(
		echo correct keep going
		set /A "i=%RANDOM%*30/32768+1"
		pause
		cls
		goto %i%
	)

if %answer2% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)




:Q3
echo -------------------------------------------
echo Question 3
echo TFTP (Trivial File Transfer Protocol) - UDP
echo is a simple protocol for transferring files
echo -------------------------------------------

echo . 443
echo . 67
echo . 69
echo . 161

set /p answer3= TFTP port Number is :
if %answer3% == 69 ( 
	echo Correct keep going
	pause 
	cls
	goto Q4 
)
if %answer3% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q4
echo -------------------------------------------------
echo Question 4
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


set /p answer4= TELNET port Number is :
if %answer4% == 23 ( 
	echo Correct keep going
	pause 
	cls
	goto Q5 
)
if %answer4% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q5
echo -------------------------------------------------
echo Question 5
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

set /p answer5= DNS port Number is :
if %answer5% == 53 ( 
	echo Correct keep going
	pause 
	cls
	goto Q6 
)
if %answer5% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q6
echo -------------------------------------------------------------
echo Question 6
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

set /p answer6= HHTP port Number is : 
if %answer6% == 80 ( 
	echo Correct keep going
	pause 
	cls
	goto Q7 
)
if %answer6% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q7
echo -------------------------------------------------------------
echo Question 7
echo HTTPS (Hypertext Transfer Protocol Secure) - TCP
echo HTTPS is an extension of HTTP and is used for secure 
echo communication over a digital network, most often the Internet. 
echo --------------------------------------------------------------

echo . 123
echo . 53
echo . 143
echo . 443

set /p answer7= HHTPS port Number is : 
if %answer7% == 443 ( 
	echo Correct keep going
	pause 
	cls
	goto Q8 
)
if %answer7% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q8
echo -------------------------------------------------------------
echo Question 8
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

set /p answer8= FTP port Number is : 
set result=false
if %answer8% == 20 set result=true
if %answer8% == 21 set result=true
if "%result%" == "true" (
	echo Correct keep going
	pause 
	cls
	goto Q9
)
if %answer8% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q9
echo -------------------------------------------------------------
echo Question 9
echo IMAP4 (Internet Message Access Protocol 4) - TCP
echo A programming interface (API) from the IETF that enables a user's
echo to access the mail serveremail program
echo --------------------------------------------------------------

echo . 443
echo . 23
echo . 143
echo . 123

set /p answer9= IMAP4 port Number is : 
if %answer9% == 143 ( 
	echo Correct keep going
	pause 
	cls
	goto Q10 
)
if %answer9% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q10
echo ----------------------------------------------
echo Question 10
echo SMTP (Simple Mail Transport Protocol) TCP-UDP
echo used for e-mail routing between mailservers
echo ----------------------------------------------

echo . 443
echo . 143
echo . 22
echo . 25

set /p answer10= SMTP port Number is : 
if %answer10% == 25 ( 
	echo Correct keep going
	pause 
	cls
	goto Q11 
)
if %answer10% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q11
echo -------------------------------------------------------------
echo Question 11
echo SCP (Secure Copy)- TCP
echo Provides a secure file-transfer service over an SSH connection
echo and offers a file�s original date and time information,
echo which is not available with FTP
echo -------------------------------------------------------------

echo . 25
echo . 21
echo . 22
echo . 110

set /p answer11= SCP port Number is :
if %answer11% == 22 ( 
	echo Correct keep going
	pause 
	cls
	goto Q12 
)
if %answer11% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q12
echo --------------------------------------------------------------
echo Question 12
echo RDP (Remote Desktop Protocol) - TCP
echo A Microsoft protocol that allows a user to view and 
echo control the desktop of a remote computer
echo -----------------------------------------------------------

echo . 23
echo . 143
echo . 3389
echo . 443

set /p answer12= RDP port Number is :
if %answer12% == 3389 ( 
	echo Correct keep going
	pause 
	cls
	goto Q13 
)
if %answer13% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q13
echo --------------------------------------------------------------
echo Question 13
echo RTSP (Real-Time Streaming Protocol) - TCP, UDP
echo Communicates with a media server (for example, a video server)
echo and controls the playback of the server�s media files 
echo --------------------------------------------------------------

echo . 443
echo . 67
echo . 554
echo . 161

set /p answer13= RTSP port Number is :
if %answer13% == 554 ( 
	echo Correct keep going
	pause 
	cls
	goto Q14 
)
if %answer13% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q14
echo -------------------------------------------------
echo Question 14
echo IMAP (Internet Message Access Protocol) - TCP
echo Retrieves email from an email server
echo -------------------------------------------------

echo . 143
echo . 80
echo . 110
echo . 23


set /p answer14= IMAP port Number is :
if %answer14% == 143 ( 
	echo Correct keep going
	pause 
	cls
	goto Q15 
)
if %answer14% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q15
echo --------------------------------------------------------------
echo Question 15
echo NNTP (Network News Transport Protocol) - TCP
echo Supports the posting and reading of articles on Usenet news servers
echo -------------------------------------------------------------

echo . 23
echo . 143
echo . 53
echo . 119

set /p answer15= NNTP port Number is :
if %answer15% == 119 ( 
	echo Correct keep going
	pause 
	cls
	goto Q16 
)
if %answer15% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q16
echo --------------------------------------------------------------
echo Question 16
echo rsh (Remote Shell) - TCP
echo Allows commands to be executed on a computer from a remote user
echo --------------------------------------------------------------

echo . 156
echo . 514
echo . 178
echo . 203

set /p answer16= rsh port Number is : 
if %answer16% == 514 ( 
	echo Correct keep going
	pause 
	cls
	goto Q17 
)
if %answer16% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q17
echo --------------------------------------------------------------
echo Question 17
echo POP3 (Post Office Protocol Version 3) - TCP
echo Retrieves email from an email server 
echo --------------------------------------------------------------

echo . 123
echo . 53
echo . 143
echo . 110

set /p answer17=  POP3 port Number is : 
if %answer17% == 110 ( 
	echo Correct keep going
	pause 
	cls
	goto Q18 
)
if %answer17% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q18
echo --------------------------------------------------------------
echo Question 18
echo SNMP (Simple Network Management Protocol) - UDP
echo Used to monitor and manage network devices 
echo --------------------------------------------------------------

echo . 22
echo . 161
echo . 53
echo . 25

set /p answer18= SNMP port Number is : 
if %answer18% == 161 ( 
	echo Correct keep going
	pause 
	cls
	goto Q19 
)
if %answer18% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q19
echo --------------------------------------------------------------
echo Question 19
echo SNMP Trap (Simple Network Management Protocol Trap) - TCP, UDP
echo A notification sent from an SNMP agent to an SNMP manager
echo --------------------------------------------------------------
echo (Choose the best answer)
echo . 162
echo . 23
echo . 143
echo . 123

set /p answer19= SNMP Trap port Number is : 
if %answer19% == 162 ( 
	echo Correct keep going
	pause 
	cls
	goto Q20 
)
if %answer19% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)
	


:Q20
echo --------------------------------------------------------------
echo Question 20
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

set /p answer20= SNTP port Number is :
if %answer20% == 123 ( 
	echo Correct keep going
	pause 
	cls
	goto Q21 
)if %answer20% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q21
echo ------------------------------------------------------------
echo Question 21
echo NetBIOS (Network Basic Input/Output System) - TCP, UDP ( it has 3 ports)
echo Provides network communication services for LANs that use NetBIOS
echo ----------------------------------------------------------
echo (There are 3 valid answers)
echo . TCP 139  
echo . UDP 137
echo . TCP 443
echo . UDP 138

set /p answer21= NetBIOS port Number is :
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



:Q22
echo -----------------------------------------------------------
echo Question 22
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

set /p answer22= DHCP port Number is :
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
echo Question 23
echo H.323 - TCP
echo A signaling protocol that provides multimedia communications over a network
echo -----------------------------------------------------------------------

echo . 1720
echo . 80
echo . 110
echo . 23

set /p answer23= H.323 port Number is :
if %answer23% == 1720 ( 
	echo Correct keep going
	pause 
	cls
	goto Q24 
)
if %answer23% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)
	


:Q24
echo ----------------------------------------------------------------
echo Question 24
echo LDAP (Lightweight Directory Access Protocol) - TCP
echo Provides directory services (for example, a user directory that
echo includes username, password, email, 
echo and phone number information) to network clients
echo ---------------------------------------------------------------

echo . 389
echo . 143
echo . 53
echo . 123

set /p answer24= LDAP port Number is :
if %answer24% == 389 ( 
	echo Correct keep going
	pause 
	cls
	goto Q25
)
if %answer24% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q25
echo -------------------------------------------------------------
echo Question 25
echo LDAPS (Lightweight Directory Access Protocol over SSH) - TCP
echo A secured version of LDAP
echo ------------------------------------------------------------

echo . 156
echo . 636
echo . 178
echo . 203

set /p answer25= LDAPS port Number is : 
if %answer25% == 636 ( 
	echo Correct keep going
	pause 
	cls
	goto Q26 
)
if %answer25% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)



:Q26
echo -------------------------------------------------------------
echo Question 26
echo MGCP (Media Gateway Control Protocol) - UDP 
echo Used as a call control and communication protocol
echo for Voice over IP networks 
echo --------------------------------------------------------------
echo (There are two valid answers)
echo . 137
echo . 2427
echo . 143
echo . 2727

set /p answer26= MGCP port Number is : 
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



:Q27
echo -------------------------------------------------------------
echo Question 27
echo RTP (Real-time Transport Protocol) - TCP, UDP
echo Used for delivering media-based data 
echo (such as Voice over IP) through the network 
echo --------------------------------------------------------------

echo . 5004
echo . 1720
echo . 5005
echo . 137

set /p answer27= RTP port Number is : 
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
echo Question 28
echo SFTP (Secure FTP) -TCP
echo Provides FTP file-transfer service over an SSH connection
echo --------------------------------------------------------------

echo . 443
echo . 23
echo . 143
echo . 22

set /p answer28= SFTP port Number is : 
if %answer28% == 22 ( 
	echo Correct keep going
	pause 
	cls
	goto Q29 
)
if %answer28% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)
	


:Q29
echo -------------------------------------------------------------
echo Question 29
echo SIP (Session Initiation Protocol) - TCP, UDP
echo Used to create and end sessions for one or more media connections, 
echo including Voice over IP calls
echo --------------------------------------------------------------
echo (There are two valid answers)
echo . TCP 5061
echo . TCP 137
echo . UDP 5060
echo . UDP 1720

set /p answer29=  SIP port Number is : 
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
echo Question 30
echo SMB (Server Message Block) - TCP 445 
echo Used to share files, printers, and other network resources
echo --------------------------------------------------------------

echo . 443
echo . 143
echo . 22
echo . 445

set /p answer30= SMB port Number is : 
if %answer30% == 445 ( 
	echo Correct keep going
	pause 
	cls
	goto finish 
)
if %answer30% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto start)


REM SET NEW VARIABLE FOR FINISH PAGE TO USE IT'S OWN VARIABLE INSTEAD OF CARRY IT FROM Q30. 
REM REMOVED USERNAME VARIABLE FLUFF, CHANGED USER INPUT VARIABLE FOR CONTINUITY
REM ADDED OPTION FOR USER TO EXIT OR EXIT AND CONGRATS MUSIC

:finish
echo ----------------------FINISH---------------------------
echo I'M PROUD OF YOU
REM echo %username%
echo Please choose a selection:
echo [1] to Retake test
echo [2] to exit test
echo [3] to exit test and celebrate
echo --------------------------------------------------------------


set /p finish= CHOICE : 
if %finish% == 1 ( 
	cls
	goto begin)
if %finish% == 2 ( 
	cls
	goto exit)
)
if %finish% == x 
    cls
	goto portList)
)else (  
	echo You deserve this, press any key 
	echo to start the celebrationtion
	pause 
	cls
	goto celebrate)

:exit
cls
exit


:celebrate
REM OKAY THIS IS SOME WEIRD IMAGE REDIRECT ON TO THE USER....REMOVED FOR SOMETHING MORE PLEASING AND TRUSTED
REM start https://www.hackread.com/wp-content/uploads/2012/12/Barbaros-DZ-Algerian-Hacker.png

start https://www.youtube.com/watch?v=SC4xMk98Pdc&t=37s

exit

