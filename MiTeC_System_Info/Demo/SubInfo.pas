unit SubInfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, CheckLst, ComCtrls;

type
  TfrmSubInfo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bOK: TButton;
    Notebook: TNotebook;
    Panel3: TPanel;
    Memo: TMemo;
    Panel4: TPanel;
    clb: TCheckListBox;
    Bevel1: TBevel;
    Panel5: TPanel;
    lb: TListBox;
    Panel6: TPanel;
    lv: TListView;
    procedure clbClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubInfo: TfrmSubInfo;

implementation

{$R *.DFM}

procedure TfrmSubInfo.clbClickCheck(Sender: TObject);
var
  OCC: TNotifyEvent;
  idx: integer;
  p: TPoint;
begin
  with TCheckListBox(Sender) do begin
    OCC:=OnClickCheck;
    OnClickCheck:=nil;
    GetCursorPos(p);
    p:=ScreenToClient(p);
    idx:=ItemAtPos(p,True);
    if idx>-1 then
      Checked[idx]:=not Checked[idx];
    OnClickCheck:=OCC;
  end;
end;

end.
