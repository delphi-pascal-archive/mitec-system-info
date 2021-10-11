unit SI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  MSystemInfo, ComCtrls, StdCtrls, ExtCtrls, CheckLst,
  {$IFDEF VER120} ImgList,{$ENDIF}{$IFDEF VER130} ImgList,{$ENDIF}
  Mask, Menus, Gauges;

type
  TfrmSI = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bRefresh: TButton;
    Panel3: TPanel;
    pc: TPageControl;
    tsWksta: TTabSheet;
    tsOS: TTabSheet;
    tsCPU: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    eWksta: TEdit;
    Label2: TLabel;
    eUser: TEdit;
    Image1: TImage;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    eBIOSName: TEdit;
    eBIOSCopy: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    eBIOSDate: TEdit;
    eBIOSExt: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    eLastBoot: TEdit;
    eSysTime: TEdit;
    pNumLock: TPanel;
    pCapsLock: TPanel;
    pScrollLock: TPanel;
    bOK: TButton;
    Image2: TImage;
    lVersion: TLabel;
    lCSD: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    eSN: TEdit;
    eRegUser: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    eRegOrg: TEdit;
    eTZ: TEdit;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    eWinDir: TEdit;
    eSysDir: TEdit;
    eTmpDir: TEdit;
    bEnvironment: TButton;
    Image3: TImage;
    lCPU: TLabel;
    lSubModel: TLabel;
    Bevel2: TBevel;
    GroupBox5: TGroupBox;
    lModel: TLabel;
    GroupBox6: TGroupBox;
    Panel4: TPanel;
    clbCPU: TCheckListBox;
    tsMemory: TTabSheet;
    GroupBox7: TGroupBox;
    Image4: TImage;
    Label16: TLabel;
    Label17: TLabel;
    ePT: TEdit;
    ePF: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    eFT: TEdit;
    eFF: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    eVT: TEdit;
    eVF: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    eAG: TEdit;
    eAppAddr: TEdit;
    Label30: TLabel;
    ePS: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    tsDisplay: TTabSheet;
    Image5: TImage;
    cbDisplay: TComboBox;
    Label33: TLabel;
    GroupBox10: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    eChip: TEdit;
    eDAC: TEdit;
    eMem: TEdit;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    eBIOS: TEdit;
    lTechnology: TLabel;
    lMetrics: TLabel;
    lPixWidth: TLabel;
    lPixHeight: TLabel;
    lPixDiag: TLabel;
    bCurve: TButton;
    bLine: TButton;
    bPoly: TButton;
    bRaster: TButton;
    bText: TButton;
    Label37: TLabel;
    tsAPM: TTabSheet;
    GroupBox13: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    eAC: TEdit;
    eBat: TEdit;
    Image6: TImage;
    GroupBox14: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    eBatFull: TEdit;
    eBatLife: TEdit;
    tsMedia: TTabSheet;
    Label42: TLabel;
    Panel5: TPanel;
    lvMedia: TListView;
    GroupBox15: TGroupBox;
    img: TImageList;
    Label43: TLabel;
    cbWave: TComboBox;
    Label44: TLabel;
    cbMIDI: TComboBox;
    Label45: TLabel;
    cbAUX: TComboBox;
    Label46: TLabel;
    cbMixer: TComboBox;
    tsNetwork: TTabSheet;
    Label47: TLabel;
    Panel6: TPanel;
    lvNetwork: TListView;
    GroupBox16: TGroupBox;
    eIP: TEdit;
    tsDevices: TTabSheet;
    Label49: TLabel;
    Panel8: TPanel;
    lvDevice: TListView;
    psd: TPrinterSetupDialog;
    tsPrinters: TTabSheet;
    Label48: TLabel;
    Panel7: TPanel;
    lvPrinter: TListView;
    bPrint: TButton;
    Label50: TLabel;
    Panel9: TPanel;
    lvSystem: TListView;
    tsEngines: TTabSheet;
    GroupBox17: TGroupBox;
    Image7: TImage;
    GroupBox18: TGroupBox;
    Image8: TImage;
    lODBC: TLabel;
    lBDE: TLabel;
    lDirectX: TLabel;
    Label51: TLabel;
    cbDirect3D: TComboBox;
    Label52: TLabel;
    cbDirectPlay: TComboBox;
    Label53: TLabel;
    cbDirectMusic: TComboBox;
    tsDrives: TTabSheet;
    Label54: TLabel;
    cbDrive: TComboBox;
    GroupBox19: TGroupBox;
    imgDrive: TImage;
    lDriveType: TLabel;
    clbFlags: TCheckListBox;
    Label55: TLabel;
    Label56: TLabel;
    eUNC: TEdit;
    eDSN: TEdit;
    Bevel3: TBevel;
    lCapacity: TLabel;
    lFree: TLabel;
    lBPS: TLabel;
    lSPC: TLabel;
    lTC: TLabel;
    lFC: TLabel;
    Bevel4: TBevel;
    bReport: TButton;
    ReportMenu: TPopupMenu;
    pmAll: TMenuItem;
    pmSelected: TMenuItem;
    sd: TSaveDialog;
    Panel10: TPanel;
    gDisk: TGauge;
    Panel11: TPanel;
    gAPM: TGauge;
    Panel12: TPanel;
    gMemory: TGauge;
    bWins: TButton;
    si: TMSystemInfo;
    GroupBox20: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    eWSDesc: TEdit;
    eWSVer: TEdit;
    eWSStat: TEdit;
    Image9: TImage;
    procedure FormCreate(Sender: TObject);
    procedure cmRefresh(Sender: TObject);
    procedure cmClose(Sender: TObject);
    procedure cmEnvironment(Sender: TObject);
    procedure cbDisplayChange(Sender: TObject);
    procedure cmCaps(Sender: TObject);
    procedure cmPrintSetup(Sender: TObject);
    procedure cbDriveChange(Sender: TObject);
    procedure cmReportClick(Sender: TObject);
    procedure cmReportAll(Sender: TObject);
    procedure cmReportCurrent(Sender: TObject);
    procedure cmWindows(Sender: TObject);
    procedure clbClickCheck(Sender: TObject);
  public
    Report :TStringList;
    procedure GetInfo;
    procedure GetWkstaInfo;
    procedure GetOSInfo;
    procedure GetCPUInfo;
    procedure GetMemoryInfo;
    procedure GetDisplayInfo;
    procedure GetAPMInfo;
    procedure GetMediaInfo;
    procedure GetNetInfo;
    procedure GetDeviceInfo;
    procedure GetEngInfo;
    procedure GetDriveInfo;
  end;

var
  frmSI: TfrmSI;

implementation

uses ShellAPI, SubInfo, WI;

{$R *.DFM}

{ TfrmSI }

procedure TfrmSI.GetWkstaInfo;
begin
  with si.Workstation do begin
    eWksta.text:=Name;
    eUser.text:=User;
    eBIOSName.text:=BIOSName;
    eBIOSCopy.text:=BIOSCopyright;
    eBIOSDate.text:=BIOSDate;
    eBIOSExt.text:=BIOSExtendedInfo;
    eLastBoot.text:=datetimetostr(LastBoot);
    eSysTime.text:=formatseconds(SystemUpTime,true,false,false);
    if NumLock then
      pNumLock.color:=clLime
    else
      pNumLock.color:=clSilver;
    if CapsLock then
      pCapsLock.color:=clLime
    else
      pCapsLock.color:=clSilver;
    if ScrollLock then
      pScrollLock.color:=clLime
    else
      pScrollLock.color:=clSilver;
  end;
end;

procedure TfrmSI.GetOSInfo;
begin
  with si.OS do begin
    tsOS.caption:=Platform;
    lVersion.caption:=format('%s %d.%d.%d',[Version,MajorVersion,MinorVersion,BuildNumber]);
    lCSD.caption:=CSD;
    eSN.text:=SerialNumber;
    eRegUser.text:=RegisteredUser;
    eRegOrg.text:=RegisteredOrg;
    eTZ.text:=TimeZone;
    eWinDir.text:=WinDir;
    eSysDir.text:=SysDir;
    eTmpDir.text:=TempDir;
  end;
end;

procedure TfrmSI.GetCPUInfo;
var
  sl :TStringList;
  i :Longint;
begin
  with si.CPU do begin
    lCPU.caption:=format('%d x %s %s - %d MHz',[Count,Vendor,VendorID,Freq]);
    lSubmodel.caption:=Submodel;
    lModel.caption:=format('Family %d  Model %d  Stepping %d  Level %d',[Family,Model,Stepping,Level]);
    sl:=TStringList.Create;
    Features.GetFeaturesStr(true,sl);
    clbCPU.items.Clear;
    for i:=0 to sl.count-1 do begin
      clbCPU.items.add(copy(sl[i],1,pos(':',sl[i])-1));
      clbCPU.Checked[clbCPU.items.count-1]:=copy(sl[i],pos(':',sl[i])+2,maxint)='Yes';
    end;
    sl.Free;
  end;
end;

procedure TfrmSI.GetMemoryInfo;
begin
  with si.Memory do begin
    ePT.text:=formatfloat('#,##',PhysicalTotal);
    ePF.text:=formatfloat('#,#0',PhysicalFree);
    eFT.text:=formatfloat('#,##',PageFileTotal);
    eFF.text:=formatfloat('#,#0',PageFileFree);
    eVT.text:=formatfloat('#,##',VirtualTotal);
    eVF.text:=formatfloat('#,#0',VirtualFree);
    gMemory.Progress:=MemoryLoad;
    eAG.text:=formatfloat('#,##',AllocGranularity);
    eAppAddr.text:=format('%s - %s',[inttohex(MinAppAddress,8),inttohex(MaxAppAddress,8)]);
    ePS.text:=formatfloat('#,##',PageSize);
  end;
end;

procedure TfrmSI.GetDisplayInfo;
begin
  with si.Video do begin
    cbDisplay.items.assign(Adapter);
    cbDisplay.itemindex:=0;
    cbDisplayChange(nil);
    eBIOS.text:=format('%s (%s)',[BIOSVersion,BIOSDate]);
    lTechnology.caption:='Technology: '+Technology;
    lMetrics.caption:=format('Metrics: %d x %d - %d bit',[HorzRes,VertRes,ColorDepth]);
    lPixWidth.caption:=format('Pixel Width: %d',[PixelWidth]);
    lPixHeight.caption:=format('Pixel Height: %d',[PixelHeight]);
    lPixDiag.caption:=format('Pixel Diagonal: %d',[PixelDiagonal]);
  end;
end;

procedure TfrmSI.GetAPMInfo;
begin
  with si.APM do begin
    eAC.text:=ACPowerStatus;
    eBat.text:=BatteryChargeStatus;
    if BatteryLifePercent<=100 then begin
      eBatFull.text:=formatseconds(BatteryLifeFullTime,true,false,false);
      eBatLife.text:=formatseconds(BatteryLifeTime,true,false,false);
      gAPM.Progress:=BatteryLifePercent;
    end else begin
      eBatFull.text:='<info not available>';
      eBatLife.text:='<info not available>';
    end;
  end;
end;

procedure TfrmSI.GetMediaInfo;
var
  i :integer;
begin
  with si.Media do begin
    lvMedia.items.clear;
    for i:=0 to Device.count-1 do
      with lvMedia.items.add do begin
        caption:=Device[i];
        if pos('stick',Device[i])>0 then
          imageindex:=2
        else
          imageindex:=1;
      end;
    cbWave.items.clear;
    cbWave.items.add(WAVEIn);
    cbWave.items.add(WAVEOut);
    cbWave.itemindex:=0;
    cbMIDI.items.clear;
    cbMIDI.items.add(MIDIIn);
    cbMIDI.items.add(MIDIOut);
    cbMIDI.itemindex:=0;
    cbAUX.items.clear;
    cbAUX.items.add(AUX);
    cbAUX.itemindex:=0;
    cbMixer.items.clear;
    cbMixer.items.add(Mixer);
    cbMixer.itemindex:=0;
  end;
end;

procedure TfrmSI.GetNetInfo;
var
  i :integer;
begin
  with si.Network do begin
    lvNetwork.items.clear;
    for i:=0 to Adapter.count-1 do
      with lvNetwork.items.add do begin
        caption:=Adapter[i];
        if pos('Dial',Adapter[i])>0 then
          imageindex:=4
        else
          imageindex:=0;
      end;
    eIP.text:=IPAddress;
    eWSDesc.Text:=Winsock.Description;
    eWSVer.Text:=Format('%d.%d',[Winsock.MajorVersion,Winsock.MinorVersion]);
    eWSStat.Text:=Winsock.Status;
  end;
end;

procedure TfrmSI.GetDeviceInfo;
var
  i :integer;
begin
  with si.Devices do begin
    lvDevice.items.clear;
    lvSystem.items.clear;
    lvPrinter.items.clear;
    for i:=0 to Monitor.count-1 do
      with lvDevice.items.add do begin
        caption:=Monitor[i];
        imageindex:=8;
      end;
    with lvDevice.items.add do begin
      caption:=Keyboard;
      imageindex:=13;
    end;
    with lvDevice.items.add do begin
      caption:=Mouse;
      imageindex:=12;
    end;
    for i:=0 to Modem.count-1 do
      with lvDevice.items.add do begin
        caption:=Modem[i];
        imageindex:=7;
      end;
    for i:=0 to Port.count-1 do
      with lvDevice.items.add do begin
        caption:=Port[i];
        imageindex:=14;
      end;
    for i:=0 to SCSI.count-1 do
      with lvDevice.items.add do begin
        caption:=SCSI[i];
        imageindex:=5;
      end;
    for i:=0 to SystemDevice.count-1 do
      with lvSystem.items.add do begin
        caption:=SystemDevice[i];
        imageindex:=11;
      end;
    for i:=0 to USB.count-1 do
      with lvSystem.items.add do begin
        caption:=USB[i];
        imageindex:=10;
      end;
    for i:=0 to Printer.count-1 do
      with lvPrinter.items.add do begin
        caption:=Printer[i];
        imageindex:=6;
      end;
  end;
end;

procedure TfrmSI.GetEngInfo;
begin
  with si.Engines do begin
    if ODBC<>'' then
      lODBC.caption:='Open Database Connectivity '+ODBC
    else
      lODBC.caption:='Open Database Connectivity not found';
    if BDE<>'' then
      lBDE.caption:='Borland Database Engine '+BDE
    else
      lBDE.caption:='Borland Database Engine not found';
  end;
  with si.DirectX do begin
    if Version<>'' then begin
      lDirectX.caption:='Installed version: '+Version;
      cbDirect3D.items.assign(Direct3D);
      cbDirect3D.itemindex:=0;
      cbDirectPlay.items.assign(DirectPlay);
      cbDirectPlay.itemindex:=0;
      cbDirectMusic.items.assign(DirectMusic);
      cbDirectMusic.itemindex:=0;
    end else
      lDirectX.caption:='Not installed.';
  end;
end;

procedure TfrmSI.GetDriveInfo;
var
  i,j :integer;
  s :string;
begin
  j:=0;
  with si.Disk do begin
    cbDrive.items.clear;
    for i:=1 to length(AvailableDisks) do begin
      s:=uppercase(copy(AvailableDisks,i,1));
      cbDrive.items.add(s+':');
      if s=uppercase(copy(si.os.windir,1,1)) then
        j:=i-1;
    end;
    cbDrive.itemindex:=j;
    cbDriveChange(nil);
  end;
end;

procedure TfrmSI.GetInfo;
begin
  screen.cursor:=crhourglass;
  try
    GetWkstaInfo;
    GetOSInfo;
    GetCPUInfo;
    GetMemoryInfo;
    GetDisplayInfo;
    GetAPMInfo;
    GetMediaInfo;
    GetNetInfo;
    GetDeviceInfo;
    GetEngInfo;
    GetDriveInfo;
  finally
    screen.cursor:=crdefault;
  end;
end;

procedure TfrmSI.FormCreate(Sender: TObject);
begin
  caption:=si.about;
  Report:=TStringList.Create;
  pc.activepage:=tsWksta;
  cmRefresh(nil);
  GetInfo;
end;

procedure TfrmSI.cmRefresh(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  try
    si.Refresh;
    GetInfo;
  finally
    screen.cursor:=crdefault;
  end;
end;

procedure TfrmSI.cmClose(Sender: TObject);
begin
  close;
end;

procedure TfrmSI.cmEnvironment(Sender: TObject);
begin
  with TfrmSubInfo.Create(self) do begin
    Notebook.pageindex:=0;
    caption:='Environment';
    memo.lines.assign(si.OS.Environment);
    showmodal;
    free;
  end;
end;

procedure TfrmSI.cbDisplayChange(Sender: TObject);
begin
  with si.Video do begin
    try
      eChip.text:=Chipset[cbDisplay.itemindex]
    except
      eChip.text:='<info not available>';
    end;
    try
      eDAC.text:=DAC[cbDisplay.itemindex]
    except
      eDAC.text:='<info not available>';
    end;
    try
      eMem.text:=Memory[cbDisplay.itemindex]
    except
      eMem.text:='<info not available>';
    end;
  end;
end;

procedure TfrmSI.cmCaps(Sender: TObject);
var
  i :integer;
  sl :TStringList;
begin
  with TfrmSubInfo.Create(self) do begin
    Notebook.pageindex:=1;
    sl:=TStringList.Create;
    case TComponent(sender).tag of
      0: begin
        caption:='Curve Capabilities';
        si.Video.GetCurveCapsStr(true,sl);
      end;
      1: begin
        caption:='Line Capabilities';
        si.Video.GetLineCapsStr(true,sl);
      end;
      2: begin
        caption:='Polygonal Capabilities';
        si.Video.GetPolygonCapsStr(true,sl);
      end;
      3: begin
        caption:='Raster Capabilities';
        si.Video.GetRasterCapsStr(true,sl);
      end;
      4: begin
        caption:='Text Capabilities';
        si.Video.GetTextCapsStr(true,sl);
      end;
    end;
    clb.items.clear;
    for i:=0 to sl.count-1 do begin
      clb.items.add(copy(sl[i],1,pos(':',sl[i])-1));
      clb.Checked[clb.items.count-1]:=copy(sl[i],pos(':',sl[i])+2,maxint)='Yes';
    end;
    sl.free;
    showmodal;
    free;
  end;
end;

procedure TfrmSI.cmPrintSetup(Sender: TObject);
begin
  psd.execute;
end;


procedure TfrmSI.cbDriveChange(Sender: TObject);
var
  p,i :Word;
  b :pchar;
  sl :TStringList;
begin
  with SI.Disk do begin
    gdisk.progress:=0;
    b:=stralloc(255);
    p:=0;
    Drive:=copy(cbDrive.text,1,2);
    strpcopy(b,Drive+'\');
    lDriveType.caption:=GetDriveTypeStr(DriveType)+' - '+FileSystem;
    if MediaPresent then
      imgDrive.picture.icon.handle:=extractassociatedicon(hinstance,b,p)
    else
      imgDrive.picture.icon.handle:=0;
    strdispose(b);
    eUNC.text:=expanduncfilename(Drive);
    eDSN.text:=SerialNumber;
    if pos('[',cbdrive.items[cbdrive.itemindex])=0 then begin
      i:=cbdrive.itemindex;
      cbdrive.items[i]:=cbdrive.items[i]+' ['+VolumeLabel+']';
      cbdrive.itemindex:=i;
    end;
    {$IFDEF VER130}
    lCapacity.caption:=formatfloat('Capacity: #,#0 bytes',Capacity);
    lFree.caption:=formatfloat('Free space: #,#0 bytes',FreeSpace);
    try
      gDisk.Progress:=round((Capacity-FreeSpace)/Capacity*100);
    except
    end;
    {$ELSE}
    lCapacity.caption:=formatfloat('Capacity: #,#0 bytes',Capacity);
    lFree.caption:=formatfloat('Free space: #,#0 bytes',FreeSpace);
    try
      gDisk.Progress:=round((Capacity-FreeSpace)/Capacity*100);
    except
      gDisk.Progress:=0;
    end;
    {$ENDIF}
    lBPS.caption:=formatfloat('Bytes/sector: 0',BytesPerSector);
    lSPC.caption:=formatfloat('Sector/cluster: 0',SectorsPerCluster);
    lFC.caption:=formatfloat('Free clusters: #,#0',FreeClusters);
    lTC.caption:=formatfloat('Total clusters: #,#0',TotalClusters);
    sl:=TStringList.Create;
    GetFileFlagsStr(true,sl);
    clbFlags.items.Clear;
    for i:=0 to sl.count-1 do begin
      clbFlags.items.add(copy(sl[i],1,pos(':',sl[i])-1));
      clbFlags.Checked[clbFlags.items.count-1]:=copy(sl[i],pos(':',sl[i])+2,maxint)='Yes';
    end;
    sl.Free;
  end;
end;

procedure TfrmSI.cmReportClick(Sender: TObject);
var
  p :tpoint;
begin
  p.y:=twincontrol(sender).top+twincontrol(sender).height;
  p.x:=twincontrol(sender).left;
  p:=twincontrol(sender).parent.clienttoscreen(p);
  ReportMenu.Popup(p.x,p.y);
end;

procedure TfrmSI.cmReportAll(Sender: TObject);
begin
  Report.Clear;
  sd.filename:='SystemInfo.txt';
  if sd.execute then begin
    si.Report(Report);
    Report.savetofile(sd.filename);
  end;
end;

procedure TfrmSI.cmReportCurrent(Sender: TObject);
begin
  Report.Clear;
  sd.filename:=pc.activepage.caption+'.txt';
  if sd.execute then begin
    case pc.activepage.pageindex of
      0: si.Workstation.Report(Report);
      1: si.OS.Report(Report);
      2: si.CPU.Report(Report);
      3: si.Memory.Report(Report);
      4: si.Video.Report(Report);
      5: si.APM.Report(Report);
      6: si.Media.Report(Report);
      7: si.Network.Report(Report);
      8: si.Devices.Report(Report);
      9: si.Devices.Report(Report);
      10: si.Engines.Report(Report);
      11: si.Disk.Report(Report);
    end;
    Report.savetofile(sd.filename);
  end;
end;

procedure TfrmSI.cmWindows(Sender: TObject);
begin
  try
    frmWI.show;
  except
    frmWI:=TfrmWI.create(self);
    frmWI.show;
  end;
end;

procedure TfrmSI.clbClickCheck(Sender: TObject);
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
