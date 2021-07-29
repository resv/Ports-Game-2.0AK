@echo off
cls
title Port TCP/IP
COLOR 1F
mode con:cols=60 lines=40

REM 7/28/21 SOURCE CODE MODIFIED BY ADAM KIM FROM THE BEST CYCLE, 2021-NY-14
REM I LITERALLY LEARNED BAT SCRIPTING FOR 2 HOURS ON NETACAD, FEEL FREE TO MAKE THIS CODE MORE EFFICIENT FOR FUTURE STUDENTS


REM REMOVED WELCOME SCREEN TO INPUT NAME (REDUCE FLUFF)
REM INSTEAD OF DELETING, WE SIMPLY BY PASS ":Welcome" (SOMEONE MAY WANT TO KEEP THIS IN THE FUTURE)
REM ALSO EDITED ALL STATEMENTS WITH "%username&" FOR GRAMMAR SINCE WE REMOVED USERNAME INPUT

REM :welcome
REM echo.-------------------------------------
REM echo         TCP/UDP ports Number
REM echo.-------------------------------------
REM echo please enter your name : 
REM set /p username= Name is : 

REM if ==  goto start

REM WE GO RIGHT INTO THE START SELECTION SCREEN
:start
cls
echo.-------------------------------------
echo       TCP/UDP ports Number v2.0
echo.-------------------------------------
echo.
echo Welcome to TCP/UDP PORTS/N TEST
echo. 
echo 30 correct consecutive answers will take you to the end
echo.

REM MODIFIED MENU WORDING AND ALSO ADDED AN OPTION TO EXIT TEST AND SEE ALL PORTS
echo Please choose a selection:
echo [1] to begin test
echo [2] to exit test
echo [x] at any time to exit test and list all ports

REM added line break for clarity and changed user input variable name
echo.
set /p choose=Waiting for your choice...
if %choose% == 1 goto begin
if %choose% == 2 goto finish
REM ADDED OPTION TO PRESS X TO QUIT AND SEE ALL PORTS
if %choose% == x goto portList

REM PORTLIST PAGE HERE
:portList
cls
echo.-------------------------------------
echo         PORT LIST
echo.-------------------------------------
echo.    FTP^|20/21   Sends Files
echo.    SSH^|22      Secure Shell (Secure Remote)
echo.Telenet^|23      Unsecure Remote Access Console
echo.   SMTP^|25      Sends Mail
echo.
echo.    DNS^|53      Domain Name Server (Network Phonebook)
echo.   DHCP^|67/68   Dynamic Host Configuration Protocol
echo.   TFTP^|69      Trivial (Not Important)
echo.   HTTP^|80      UNSECURE web access
echo.
echo.   POP3^|110     Rcv Email (Inbox)
echo.    NTP^|123     Network Time Protocol (UTC)
echo.NetBios^|137/139 Network BIOS (Basic Input/Output Services)
echo. IMAPv4^|143     Mail Stored on a Server 
echo.                (Access from Many Devices)
echo.
echo.   SNMP^|161     Simple Network Management Protocol
echo.   LDAP^|389     Lightweight Directory Access Protocol
echo.  HTTPS^|443     Secure Web Access
echo.  LDAPS^|636     LightWeight Directory Access SECURE
echo.    RDP^|3389    Remote Desktop Protocol
echo.
echo.
echo.
pause
goto :start

REM "begin" page will RANDOMIZE QUESTIONS WE MAKE AN ARRAY OF 0-29 FOR 30 TOTAL QUESTIONS
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



randomize array indices of 0-26

then go to first index
question should increment array index to the next.
after last index is reached, go to end.


pause 
cls






REM QUESTIONS 1-30

echo ----------------------------------------
echo               let's begin
echo ----------------------------------------
:Q1
echo -----------------------------------------
echo Question N01
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
	pause 
	cls
	goto Q2
) 
if %answer1% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto Q1)

:Q2
echo -----------------------------------------
echo Question N02
echo NTP (Network Time Protocol) - UDP
echo used for time synchronization
echo -----------------------------------------


echo . 23
echo . 143
echo . 123
echo . 443
set /p answer2= NTP port Number is :
if %answer2% == 123 ( 
	echo Correct keep going
	pause 
	cls
	goto Q3 
)
if %answer2% == x (  
	cls
	goto portList
)else (  
	echo sorry it is wrong answer try again
	pause 
	cls
	goto Q1)

:Q3
echo -------------------------------------------
echo Question N03
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
	goto Q1)
	
:Q4
echo -------------------------------------------------
echo Question N04
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
	goto Q1)
	
:Q5
echo -------------------------------------------------
echo Question N05
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
	goto Q1)

:Q6
echo -------------------------------------------------------------
echo Question N06
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
	goto Q1)

:Q7
echo -------------------------------------------------------------
echo Question N07
echo HHTPS (Hypertext Transfer Protocol Secure) - TCP
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
	goto Q1)

:Q8
echo -------------------------------------------------------------
echo Question N08
echo FTP (File Transfer Protocol) - TCP
echo (FTP) is a standard network protocol used for the transfer of
echo computer files between a client and server on a computer network. 
echo FTP is built on a client-server model architecture using separate 
echo control and data connections between the client and the server. 
echo --------------------------------------------------------------

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
	goto Q1)

	
:Q9
echo -------------------------------------------------------------
echo Question N09
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
	goto Q1)
	
:Q10
echo ----------------------------------------------
echo Question N10
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
	goto Q1)

:Q11
echo -------------------------------------------------------------
echo Question N11
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
	goto Q1)

:Q12
echo --------------------------------------------------------------
echo Question N12
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
	goto Q1)

:Q13
echo --------------------------------------------------------------
echo Question N13
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
	goto Q1)
	
:Q14
echo -------------------------------------------------
echo Question N14
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
	goto Q1)
	
:Q15
echo --------------------------------------------------------------
echo Question N15
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
	goto Q1)

:Q16
echo --------------------------------------------------------------
echo Question N16
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
	goto Q1)

:Q17
echo --------------------------------------------------------------
echo Question N17
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
	goto Q1)

:Q18
echo --------------------------------------------------------------
echo Question N18
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
	goto Q1)

:Q19
echo --------------------------------------------------------------
echo Question N19
echo SNMP Trap (Simple Network Management Protocol Trap) - TCP, UDP
echo A notification sent from an SNMP agent to an SNMP manager
echo --------------------------------------------------------------

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
	goto Q1)
	
:Q20
echo --------------------------------------------------------------
echo Question N20
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
	goto Q1)

:Q21
echo ------------------------------------------------------------
echo Question N21
echo NetBIOS (Network Basic Input/Output System) - TCP, UDP ( it has 3 ports)
echo Provides network communication services for LANs that use NetBIOS
echo ----------------------------------------------------------

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
	goto Q1)

:Q22
echo -----------------------------------------------------------
echo Question N22
echo DHCP (Dynamic Host Configuration Protocol) - UDP
echo Dynamically assigns IP address information
echo (for example, IP address, subnet mask, DNS server�s IP address,
echo and default gateway�s IP address) to a network device
echo ---------------------------------------------------------

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
	goto Q1)
	
:Q23
echo -------------------------------------------------------------------------
echo Question N23
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
	goto Q1)
	
:Q24
echo ----------------------------------------------------------------
echo Question N24
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
	goto Q1)


:Q25
echo -------------------------------------------------------------
echo Question N25
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
	goto Q1)

:Q26
echo -------------------------------------------------------------
echo Question N26
echo MGCP (Media Gateway Control Protocol) - UDP
echo Used as a call control and communication protocol
echo for Voice over IP networks 
echo --------------------------------------------------------------

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
	goto Q1)

:Q27
echo -------------------------------------------------------------
echo Question N27
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
	goto Q1)

:Q28
echo -------------------------------------------------------------
echo Question N28
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
	goto Q1)
	
:Q29
echo -------------------------------------------------------------
echo Question N29
echo SIP (Session Initiation Protocol) - TCP, UDP
echo Used to create and end sessions for one or more media connections, 
echo including Voice over IP calls
echo --------------------------------------------------------------

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
	goto Q1)

:Q30
echo -------------------------------------------------------------
echo Question N30
echo SMB (Server Message Block) - TCP
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
	goto Q1)


REM SET NEW VARIABLE FOR FINISH PAGE TO USE IT'S OWN VARIABLE INSTEAD OF CARRY IT FROM Q30. 
REM REMOVED USERNAME VARIABLE FLUFF, CHANGED USER INPUT VARIABLE FOR CONTINUITY
REM ADDED OPTION FOR USER TO EXIT OR EXIT AND CONGRATS MUSIC

:finish
echo ----------------------FINISH---------------------------
echo THANK YOU SO MUCH 
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
	exit
)
)else (  
	echo You deserve this, press any key 
	echo to start the celebration and vibe out.
	pause 
	cls
	goto celebrate)

:celebrate
REM OKAY THIS IS SOME WEIRD REDIRECT ON TO THE USER....REMOVED FOR SOMETHING MORE PLEASING
REM start https://www.hackread.com/wp-content/uploads/2012/12/Barbaros-DZ-Algerian-Hacker.png
start https://www.youtube.com/watch?v=SC4xMk98Pdc&t=37s

exit

