#define Name    "QLauncher"
#define Version "1.0.0"
#define ExeName "Launcher.exe"

[Setup]

AppId={{3B8A39E2-E29B-4DF4-A373-4F3524050B60}}

AppName={#Name}
AppVersion={#Version}

DefaultDirName={pf}\{#Name}
DefaultGroupName={#Name}

OutputDir=.\bin-setup
OutputBaseFilename={#Name}-v{#Version}-setup

SetupIconFile=.\img\setup-icon.ico

WizardImageFile="img\intro.bmp"
WizardSmallImageFile="img\small-wizard.bmp"
WizardImageAlphaFormat=none

DisableWelcomePage=no

DisableDirPage=no

DisableProgramGroupPage=no

DisableFinishedPage=no

Compression=lzma
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Icons]
Name: "{group}\{#Name}"; Filename: "{app}\{#ExeName}"; IconFilename: "{app}\favicon.ico"                            
Name: "{commondesktop}\{#Name}"; Filename: "{app}\{#ExeName}"; IconFilename: "{app}\favicon.ico"; Tasks: desktopicon

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; LicenseFile: "license_rus.rtf"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "license_rus.rtf"

#include <idp.iss>
#include <idplang\russian.iss> 

[Code]

#include  "java.pas"
#include  "download.pas"

[Run]
Filename: {tmp}\jre_install.exe
Filename: {app}\Launcher.exe; Flags: showcheckbox postinstall 