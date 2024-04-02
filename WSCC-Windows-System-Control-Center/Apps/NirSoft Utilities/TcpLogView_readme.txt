


TcpLogView v1.41
Copyright (c) 2013 - 2023 Nir Sofer
Web site: https://www.nirsoft.net



Description
===========

TcpLogView is a simple utility that monitors the opened TCP connections
on your system, and adds a new log line every time that a TCP connection
is opened or closed. For every log line, the following information is
displayed: Even Time, Event Type (Open, Close, Listen), Local Address,
Remote Address, Remote Host Name, Local Port, Remote Port, Process ID,
Process Name, and the country information of the Remote IP (Requires to
download IP to country file separately.)



System Requirements & Limitations
=================================


* This utility works on any version of Windows, starting from Windows
  2000 and up to Windows 11. On 64-bit systems, you should use the x64
  build of TcpLogView.
* This utility creates the TCP log by taking a snapshot of currently
  open TCP connections, and comparing it to the previous snapshot. This
  means that if a TCP connection is opened for a very short time, then
  TcpLogView will not be able to capture it. Starting from version 1.41,
  you can manually set the capture interval in the TcpLogView.cfg file
  (CaptureInterval value). The default interval is 100 milliseconds.
* On Windows Vista/7/8 with UAC turned on, you should run TcpLogView as
  administrator if you want to get full process information.



Versions History
================


* Version 1.41:
  o Added 'CaptureInterval' value to the .cfg file. This value
    determines the number of milliseconds that TcpLogView waits before
    taking the next TCP connections snapshot. The default interval is 100
    milliseconds (In previous versions it was 250 milliseconds). You can
    manually decrease this value if you want to capture TCP connections
    opened for very short time.

* Version 1.40:
  o Added 'Show Only Incoming Connections' option. When this option
    is turned on, TcpLogView shows only connections with associated
    listening port.

* Version 1.38:
  o Added support for using the IP-Location files from
    https://github.com/sapics/ip-location-db for viewing country/city
    information of remote IP addresses.
  o In order to use these IP-Location files, simply download the
    desired file and put it in the same folder of TcpLogView.exe with its
    original filename (For example: asn-country-ipv4.csv ,
    dbip-city-ipv4.csv)

* Version 1.37:
  o Fixed bug: TcpLogView randomly crashed when using the GeoLite2
    City database.
  o Added secondary sorting support: You can now get a secondary
    sorting, by holding down the shift key while clicking the column
    header. Be aware that you only have to hold down the shift key when
    clicking the second/third/fourth column. To sort the first column you
    should not hold down the Shift key.
  o Added option to change the sorting column from the menu (View ->
    Sort By). Like the column header click sorting, if you click again
    the same sorting menu item, it'll switch between ascending and
    descending order. Also, if you hold down the shift key while choosing
    the sort menu item, you'll get a secondary sorting.
  o Added 'Sort By' dropdown to the toolbar.

* Version 1.36:
  o Fixed a bug that caused a token handle leak (Related to the
    'Process User' column).

* Version 1.35:
  o Added 'Process User' column.
  o Updated to work properly in high DPI mode.

* Version 1.32:
  o Added support for GeoLite2 City and GeoLite2 Country database in
    CSV format.
  o In order to use it, extract all files into the folder of
    TcpLogView.exe
  o Be aware that the loading process of the GeoLite2 City database
    is quite slow.

* Versions 1.31:
  o Fixed bug: When exporting the log items while the 'Write To Log
    File' option was active, TcpLogView started to write the csv log file
    in Unicode, causing the file to be corrupted.

* Versions 1.30:
  o The 'Remote Host Name' is now also displayed for IPv6 addresses.

* Versions 1.27:
  o When the log file is created in the first time ('Write To Log
    File' option), TcpLogView now adds header line to the file.

* Versions 1.26:
  o Added 'Save All Items'.

* Versions 1.25:
  o TcpLogView now displays the process names (Some of them without
    the full path) for most processes when you run it without elevation
    ('Run As Administrator'). Also, the 32-bit version of TcpLogView now
    detects 64-bit processes properly.

* Versions 1.20:
  o Added 'Run As Administrator' option (Ctrl+F11), which allows you
    to easily run TcpLogView as administrator on Windows Vista/7/8/2008.
    It's needed in order to view the information of other processes
    running as admin.

* Versions 1.16:
  o Added 'Start As Hidden' option. (This option is available when
    the tray icon is enabled)

* Versions 1.15:
  o Added 'Write To Log File' option. When it's turned on, all log
    lines are automatically written to TcpLogView.csv located in the same
    folder of TcpLogView.exe

* Versions 1.12:
  o Added integration with IPNetInfo utility

* Versions 1.11:
  o 'No Local-Host Connections' option now also works with IPv6
    loopback address.

* Versions 1.10:
  o Added 'No Local-Host Connections' option. When it's turned on,
    connections with 127.0.0.1 in both 'Local Address' and 'Remote
    Address' will not be added.

* Versions 1.06:
  o Fixed bug: The 'Resolve IP Addresses' feature failed to work on
    some versions of Windows. (Ooops... I forgot to initialize the
    Winsock DLL...)

* Versions 1.05:
  o Added 'Scroll Down On New Line' option. If it's turned on,
    TcpLogView automatically scrolls to the bottom when a new line is
    added.

* Versions 1.00 - First release.



Start Using TcpLogView
======================

TcpLogView doesn't require any installation process or additional dll
files. In order to start using it, simply run the executable file -
TcpLogView.exe
After running TcpLogView, it starts logging the TCP connections, and adds
a new line every time that TCP connection is opened or closed. You can
clear the current log by using the Clear Log option (Ctrl+X)



IP Address Country/City Information
===================================

TcpLogView allows you to view country/city information for every remote
IP address ('Remote IP Country' column). In order to use this feature,
simply download the desired city or country file from
https://github.com/sapics/ip-location-db, and then put it in the same
folder of TcpLogView.exe with its original filename (For example:
asn-country-ipv4.csv , dbip-city-ipv4.csv)



Integration with IPNetInfo utility
==================================

If you want to get more information about the remote IP address displayed
in TcpLogView utility, you can use the Integration with IPNetInfo utility
in order to easily view the IP address information loaded directly from
WHOIS servers:
1. Download and run the latest version of IPNetInfo utility.
2. Select the desired connections, and then choose "IPNetInfo - Remote
   Address" from the File menu (or simply click Ctrl+I).
3. IPNetInfo will retrieve the information about remote IP addresses
   of the selected items.



Translating TcpLogView to other languages
=========================================

In order to translate TcpLogView to other language, follow the
instructions below:
1. Run TcpLogView with /savelangfile parameter:
   TcpLogView.exe /savelangfile
   A file named TcpLogView_lng.ini will be created in the folder of
   TcpLogView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run TcpLogView, and all
   translated strings will be loaded from the language file.
   If you want to run TcpLogView without the translation, simply rename
   the language file, or move it to another folder.



License
=======

This utility is released as freeware. You are allowed to freely
distribute this utility via floppy disk, CD-ROM, Internet, or in any
other way, as long as you don't charge anything for this and you don't
sell it or distribute it as a part of commercial product. If you
distribute this utility, you must include all files in the distribution
package, without any modification !



Disclaimer
==========

The software is provided "AS IS" without any warranty, either expressed
or implied, including, but not limited to, the implied warranties of
merchantability and fitness for a particular purpose. The author will not
be liable for any special, incidental, consequential or indirect damages
due to loss of data or any other reason.



Feedback
========

If you have any problem, suggestion, comment, or you found a bug in my
utility, you can send a message to nirsofer@yahoo.com
