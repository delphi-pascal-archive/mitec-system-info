program SysInfo;

uses
  Forms,
  SI in 'SI.pas' {frmSI},
  WI in 'WI.pas' {frmWI},
  SubInfo in 'SubInfo.pas' {frmSubInfo};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSI, frmSI);
  Application.Run;
end.
