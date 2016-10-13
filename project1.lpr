program project1;
uses
  SysUtils, fphttpapp, fpwebfile,

  ShellApi;

Const
  MyPort = 8080;
  MyDocumentRoot = 'c:\Users\Unicredit\Documents\free_pascal\js_developer\';
  MyMiMeFile = '.\mime.types';

begin
  RegisterFileLocation('files',MyDocumentRoot);
  MimeTypesFile:=MyMimeFile;
  Application.Initialize;
  Application.Port:=MyPort;
  Application.Title:='My HTTP Server';

  Application.RedirectOnError:=false;

  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start http://localhost:8080/index.html'),nil,0) =0 then;

  Application.Run;
end.

