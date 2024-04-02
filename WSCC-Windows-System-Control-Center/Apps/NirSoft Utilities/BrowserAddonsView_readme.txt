


BrowserAddonsView v1.29
Copyright (c) 2016 - 2024 Nir Sofer
Web site: https://www.nirsoft.net



Description
===========

BrowserAddonsView is a simple tool that displays the details of all Web
browser addons/plugins installed in your system. BrowserAddonsView can
scan and detect the addons of most popular Web browsers: Chrome, Firefox,
and Internet Explorer. For Chrome and Firefox, BrowserAddonsView detects
and scans all Web browser profiles if there are multiple profiles.



System Requirements
===================

This utility works on any version of Windows, starting from Windows XP
and up to Windows 11. Both 32-bit and 64-bit systems are supported.



Known Issues
============


* When Firefox has more than one profile, the installed plugins will be
  displayed multiple times (one item for each profile), even if the
  plugins are linked to the same dll file.



Versions History
================


* Version 1.29:
  o Added 'Sort By' toolbar button.

* Version 1.28:
  o Added /Columns command-line option, which allows you to set the
    columns to display or the columns to export from command-line, for
    example:
    BrowserAddonsView.exe /scomma "c:\temp\addons.csv" /Columns
    "Name,Version,Description,Web Browser,Status"

* Version 1.27:
  o Added option to choose another font (name and size) to display in
    the main window.

* Version 1.26:
  o Added option to change the sorting column from the menu (View ->
    Sort By). Like the column header click sorting, if you click again
    the same sorting menu item, it'll switch between ascending and
    descending order. Also, if you hold down the shift key while choosing
    the sort menu item, you'll get a secondary sorting.
  o Fixed some high DPI mode issues (Toolbar, Properties Window).

* Version 1.25:
  o You can now use any variable inside BrowserAddonsView.cfg as
    command-line option in order to load the BrowserAddonsView tool with
    the desired configuration.
  o For example, the following command will load the Web browser
    addons from the remote computer - 192.168.0.40 :
    BrowserAddonsView.exe /DataSourceMode 4 /RemoteComputer 192.168.0.40

* Version 1.23:
  o Added 'Copy Clicked Cell' option to the right-click context menu,
    which copies to the clipboard the text of cell that you right-clicked
    with the mouse.

* Version 1.22:
  o BrowserAddonsView now automatically displays the installed
    add-ons of Microsoft Edge Web browser.
  o Fixed the /cfg command-line option to load the .cfg file from the
    current directory if full path is not specified.

* Version 1.21:
  o Added 'Select All' and 'Deselect All' to the 'Column Settings'
    window.

* Version 1.20:
  o Added 'Data Source Mode', which allows you to view the installed
    plugins on all Windows profiles on your system, on external hard
    drive, and on remote computer on your network (Admin share is
    needed). This feature works only for Firefox and Chrome Web browsers.
  o When pressing F5 (Refresh) the refresh process is smoother,
    keeping the selected item and scroll position.

* Version 1.16:
  o Added 'Add Header Line To CSV/Tab-Delimited File' option (Turned
    on by default).
  o Added /cfg command-line option to start BrowserAddonsView with
    the specified config file.

* Version 1.15:
  o In the 'Advanced Options' window - You can now use environment
    variables in the specified profile folder of Chrome and Firefox (e.g:
    %LocalAppdata%\Google\Chrome\User Data\Profile 1 )
  o In the 'Advanced Options' window - You can now specify the base
    profiles folder instead of a single profile (e.g:
    %LocalAppdata%\Google\Chrome\User Data )

* Version 1.12:
  o Added support for saving as JSON file.

* Version 1.11:
  o Fixed issue: BrowserAddonsView failed to display the extensions
    of Chrome on some systems, because on new installions of Chrome the
    extensions list is stored in 'Preferences' file instead of the
    'Secure Preferences' file.

* Version 1.10:
  o Added 'Quick Filter' feature (View -> Use Quick Filter or
    Ctrl+Q). When it's turned on, you can type a string in the text-box
    added under the toolbar and BrowserAddonsView will instantly filter
    the addons table, showing only items that contain the string you
    typed.

* Version 1.05:
  o You can now choose the desired encoding (ANSI, UTF-8, UTF-16) to
    save the csv/xml/text/html files. (Under the Options menu)

* Version 1.00 - First release.



Start Using BrowserAddonsView
=============================

BrowserAddonsView doesn't require any installation process or additional
DLL files. In order to start using it, simply run the executable file -
BrowserAddonsView.exe
After running BrowserAddonsView, the main window displays the list of all
addons found on your system. You can select one or more addon items, and
export the addons list to text/csv/tab-delimited/xml/html file using the
'Save Selected Items' option, or copy the addons list to the clipboard
(Ctrl+C) and paste it to Excel or any other spreadsheet application.



View plugins / extensions of Chrome and Firefox for all Windows profiles
========================================================================

In order to view the plugins/extensions of Chrome and Firefox for all
Windows profiles, press F9 (Advanced Options) and from the 'Data Source
Mode' combo-box choose 'This computer - All Windows Profiles'. This
feature will work only if you have read permission to all Windows
profiles on your system (all folders under C:\users ).



Viewing the addons list from remote system or external drive
============================================================

BrowserAddonsView also allows you to view the addons list of Firefox and
Chrome Web browsers from a remote computer on your network and from
external disk plugged to your system. Currently, this feature is not
supported for Internet Explorer.

In order to view the addons of another system, go to the 'Advanced
Options' window (F9), choose the 'Load the addons from custom Web browser
profiles list' option and then type one or more profile folders of the
Web browser (comma delimited list).
Here's a few examples for profile folders of Chrome and Firefox:
\\192.168.0.7\c$\Users\user01\AppData\Local\Google\Chrome\User
Data\Profile 1
\\192.168.0.4\c$\Users\admin\AppData\Roaming\Mozilla\Firefox\Profiles\ardko
dcy.default
K:\Documents and Settings\nir1\Application
Data\Mozilla\Firefox\Profiles\5c1ggx6u.default

Starting from version 1.20, you can also use the 'Remote Computer' option
in the 'Data Source Mode' field, type the computer name, and
BrowserAddonsView will automatically enumerate all profiles on the remote
computer.

For external drive - you can choose the 'Windows Profiles - External
Drive' option in the 'Data Source Mode' field, type the base profiles
folder (e.g: F:\Users) and BrowserAddonsView will automatically enumerate
all profiles on the specified drive.



Command-Line Options
====================



/cfg <Filename>
Start BrowserAddonsView with the specified configuration file. For
example:
BrowserAddonsView.exe /cfg "c:\config\bav.cfg"
BrowserAddonsView.exe /cfg "%AppData%\BrowserAddonsView.cfg"

/stext <Filename>
Save the Web browser addons list into a simple text file.

/stab <Filename>
Save the Web browser addons list into a tab-delimited text file.

/scomma <Filename>
Save the Web browser addons list into a comma-delimited text file (csv).

/stabular <Filename>
Save the Web browser addons list into a tabular text file.

/shtml <Filename>
Save the Web browser addons list into HTML file (Horizontal).

/sverhtml <Filename>
Save the Web browser addons list into HTML file (Vertical).

/sxml <Filename>
Save the Web browser addons list into XML file.

/sjson <Filename>
Save the Web browser addons list into JSON file.

/sort <column>
This command-line option can be used with other save options for sorting
by the desired column. The <column> parameter can specify the column
index (0 for the first column, 1 for the second column, and so on) or the
name of the column, like "Web Browser" and "Name". You can specify the
'~' prefix character (e.g: "~Name") if you want to sort in descending
order. You can put multiple /sort in the command-line if you want to sort
by multiple columns.



/Columns <Comma Delimited Columns List>
Allows you to set the columns to display or the columns to export from
command-line. You have to specify the column names, delimited by comma,
for example:
BrowserAddonsView.exe /scomma c:\temp\addons-list.csv /Columns
"Name,Version,Description,Web Browser,Status"

You can also specify the column names without space characters, for
example:
BrowserAddonsView.exe /Columns
"Name,Version,Description,WebBrowser,Status"

/DataSourceMode [1 - 4]
/RemoteComputer [Computer Name]
/DataSourceFirefox [0 | 1]
/FirefoxProfiles [Profiles]
/DataSourceChrome [0 | 1]
/ChromeProfiles [Profiles]
/ExternalWindowsProfiles [Windows Profiles]
.
.
.
You can use any variable inside BrowserAddonsView.cfg as command-line
option in order to load the BrowserAddonsView tool with the desired
configuration.

Here's a few examples:
* Load Web browser addons from all profiles on your computer:
  BrowserAddonsView.exe /DataSourceMode 2
* Load Web browser addons from profiles on external drive - K:\users
  BrowserAddonsView.exe /DataSourceMode 3 /ExternalWindowsProfiles
  "K:\users"
* Load browser addons from remote computer - 192.168.0.100 :
  BrowserAddonsView.exe /DataSourceMode 4 /RemoteComputer 192.168.0.100




Translating BrowserAddonsView to other languages
================================================

In order to translate BrowserAddonsView to other language, follow the
instructions below:
1. Run BrowserAddonsView with /savelangfile parameter:
   BrowserAddonsView.exe /savelangfile
   A file named BrowserAddonsView_lng.ini will be created in the folder
   of BrowserAddonsView utility.
2. Open the created language file in Notepad or in any other text
   editor.
3. Translate all string entries to the desired language. Optionally,
   you can also add your name and/or a link to your Web site.
   (TranslatorName and TranslatorURL values) If you add this information,
   it'll be used in the 'About' window.
4. After you finish the translation, Run BrowserAddonsView, and all
   translated strings will be loaded from the language file.
   If you want to run BrowserAddonsView without the translation, simply
   rename the language file, or move it to another folder.



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
