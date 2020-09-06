const
  
    URL = 'https://qlauncher.org/download/';
    ExeName = 'Launcher.exe';
    JarName = 'Launcher.jar';
    IconName = 'favicon.ico';
    StartBat = 'start.bat';
    StartCmd = 'start.cmd';
    StartVbs = 'start.vbs';
    StartZip = 'start.zip';
    Java_x86 = 'jre-8u251-windows-i586.exe';
    Java_x64 = 'jre-8u251-windows-x64.exe';

procedure InitializeWizard();
begin
  idpAddFile(URL + ExeName, ExpandConstant('{tmp}\' + ExeName));
  idpAddFile(URL + JarName, ExpandConstant('{tmp}\' + JarName));
  idpAddFile(URL + IconName, ExpandConstant('{tmp}\' + IconName));
  idpAddFile(URL + StartBat, ExpandConstant('{tmp}\' + StartBat));
  idpAddFile(URL + StartCmd, ExpandConstant('{tmp}\' + StartCmd));
  idpAddFile(URL + StartVbs, ExpandConstant('{tmp}\' + StartVbs));
  idpAddFile(URL + StartZip, ExpandConstant('{tmp}\' + StartZip));
  

  create_java_setup();

  if java_checkbox.Checked then
  begin

    if IsWin64 then
      idpAddFile(URL + Java_x64, ExpandConstant('{tmp}\jre_install.exe'));
    
    if not IsWin64 then
      idpAddFile(URL + Java_x86, ExpandConstant('{tmp}\jre_install.exe'));           

  end;  

  idpDownloadAfter(wpReady);

end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then 
  begin
    FileCopy(ExpandConstant('{tmp}\' + ExeName), ExpandConstant('{app}\' + ExeName), false);
    FileCopy(ExpandConstant('{tmp}\' + JarName), ExpandConstant('{app}\' + JarName), false);
    FileCopy(ExpandConstant('{tmp}\' + IconName), ExpandConstant('{app}\' + IconName), false);
    FileCopy(ExpandConstant('{tmp}\' + StartBat), ExpandConstant('{app}\' + StartBat), false);
    FileCopy(ExpandConstant('{tmp}\' + StartCmd), ExpandConstant('{app}\' + StartCmd), false);
    FileCopy(ExpandConstant('{tmp}\' + StartVbs), ExpandConstant('{app}\' + StartVbs), false);
    FileCopy(ExpandConstant('{tmp}\' + StartZip), ExpandConstant('{app}\' + StartZip), false);    
  end; 

end;