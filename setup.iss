; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "蛐蛐宝"
#define MyAppVersion "0.1.0"
#define MyAppPublisher "福州网梭网络信息服务有限公司"
#define MyAppURL "http://b.ququ.im/"
#define MyAppExeName "ququbao.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7313B93A-B956-4CB6-B873-C95EF8693477}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\ququbao
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=dist\
OutputBaseFilename=ququbao_setup_v{#MyAppVersion}
SetupIconFile=assets\win\ququbao.ico
Compression=lzma
SolidCompression=yes

[Registry]
;current user only

[Languages]
Name: "Chinese"; MessagesFile: "ChineseSimp.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags:

[Files]
Source: "dist\ququbao\win32\ququbao.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\ququbao\win32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
