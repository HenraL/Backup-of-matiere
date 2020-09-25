; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Learn your dates"
#define MyAppVersion "1.0"
#define MyAppPublisher "Henry Letellier"
#define MyAppURL "https://github.com/HenraL"
#define MyAppExeName "startersoft.bat"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{205A3FF1-A846-4952-A104-C2EBBC32A677}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Henry PC\Dropbox\Henry et Papa\Mati�res\NSI\T1\Dates d'histoire\outputfolder\thirdtest
OutputBaseFilename=mysetup
SetupIconFile=C:\Program Files (x86)\Apprend tes dates\py.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: "C:\Program Files (x86)\Apprend tes dates\startersoft.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\Download Python.url"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\py.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\see your stats.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\startersoft.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\Stats_dates_d_histoire_Graphic_py.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\prog\*"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\prog\dates d'histoire graphique.py"; DestDir: "{app}\prog"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\Apprend tes dates\*"; DestDir: "{app}\C:\ProgramData\Microsoft\Windows\Start Menu\Programs"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\Apprend tes dates\Download Python.url"; DestDir: "{app}\C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Apprend tes dates"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\startersoft.bat"; DestDir: "{app}\C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Apprend tes dates"; Flags: ignoreversion
Source: "C:\Program Files (x86)\Apprend tes dates\Apprend tes dates\stats\*"; DestDir: "{app}\C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Apprend tes dates"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

