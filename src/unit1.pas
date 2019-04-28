unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Synaser, StrUtils, FileUtil, TAGraph, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, Menus, Unit2, crt, Unit4, syncobjs, IniFiles;

type

  { TmyDewControllerfrm }

  TmyDewControllerfrm = class(TForm)
    AmbientTemptxtbox: TEdit;
    AtBiasOffsettxtbox: TEdit;
    Chart: TMenuItem;
    SelectDirectoryDialog: TSelectDirectoryDialog;
    setfolderbtn: TButton;
    lcdpagetimegetbtn: TButton;
    lcdpagetimesetbtn: TButton;
    dataloggingchkbox: TCheckBox;
    comspeedcombobox: TComboBox;
    errorloggingchkbox: TCheckBox;
    logfilenametxtbox: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    PCBTempgrpbox: TGroupBox;
    LCDPagTimegrpbox: TRadioGroup;
    lcdpagetime2srb: TRadioButton;
    lcdpagetime25srb: TRadioButton;
    lcdpagetime3srb: TRadioButton;
    lcdpagetime35srb: TRadioButton;
    lcdpagetime4srb: TRadioButton;
    TrackModeOffsetValtxtbox: TEdit;
    Ch1Offsettxtbox: TEdit;
    Ch1Pwrtxtbox: TEdit;
    CelsiusFahrenheightchkbox: TCheckBox;
    dataupdatestartbtn: TButton;
    ch3modegrpbox: TRadioGroup;
    ch3modeoffrb: TRadioButton;
    ch3modech1rb: TRadioButton;
    ch3modech2rb: TRadioButton;
    ch3modetempprobe3rb: TRadioButton;
    ch3modegetbtn: TButton;
    ch3modesetbtn: TButton;
    ch3modemanualrb: TRadioButton;
    DataTimer: TTimer;
    DataUpdategrpbox: TRadioGroup;
    dataupdatestopbtn: TButton;
    ClearStatusMessagesTimer: TTimer;
    update5mrb: TRadioButton;
    update1mrb: TRadioButton;
    update30srb: TRadioButton;
    update10srb: TRadioButton;
    WriteEEPROMbtn: TButton;
    LCDEnablechkbox: TCheckBox;
    Getchoffsetsbtn: TButton;
    Getchpwrbtn: TButton;
    Setch1pwronbtn: TButton;
    Setch1pwroffbtn: TButton;
    Power: TGroupBox;
    Offsetsgrpbox: TGroupBox;
    PCBTemptxtbox: TEdit;
    PCBThresholdtxtbox: TEdit;
    Ch2Pwrtxtbox: TEdit;
    Ch2Offsettxtbox: TEdit;
    Ch1Temptxtbox: TEdit;
    Ch3Pwrtxtbox: TEdit;
    Ch3Offsettxtbox: TEdit;
    Ch3Temptxtbox: TEdit;
    Ch2Temptxtbox: TEdit;
    GetATBiasOffsetbtn: TButton;
    GetPCBValuesbtn: TButton;
    Humiditytxtbox: TEdit;
    GetFanSpeedbtn: TButton;
    DewPointtxtbox: TEdit;
    FanSpeedgroup: TRadioGroup;
    FanSpeed0rb: TRadioButton;
    FanSpeed50rb: TRadioButton;
    FanSpeed75rb: TRadioButton;
    FanSpeed100rb: TRadioButton;
    Ambientrb: TRadioButton;
    MidPointrb: TRadioButton;
    DewPointrb: TRadioButton;
    SetATBiasOffsetbtn: TButton;
    Setch2pwronbtn: TButton;
    Setchoffsetsbtn: TButton;
    SetPCBValuesbtn: TButton;
    TrackingModegroup: TRadioGroup;
    SetFanSpeedbtn: TButton;
    SetTrackingModebtn: TButton;
    TrackModeOffsetPlusbtn: TButton;
    TrackModeOffsetZerobtn: TButton;
    TrackModeOffsetMinusbtn: TButton;
    GetValuesbtn: TButton;
    ConnectBtn: TButton;
    DisconnectBtn: TButton;
    Label10: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    AboutMenu: TMenuItem;
    ExitMenu: TMenuItem;
    Label5: TLabel;
    StatusMessage: TEdit;
    GetFirmwareBtn: TButton;
    ExitBtn: TButton;
    GetTrackingModeBtn: TButton;
    Label2: TLabel;
    Label4: TLabel;
    TypeComPort: TEdit;
    procedure AboutMenuClick(Sender: TObject);
    procedure ChartClick(Sender: TObject);
    procedure GraphMenuClick(Sender: TObject);
    procedure setfolderbtnClick(Sender: TObject);
    procedure CelsiusFahrenheightchkboxChange(Sender: TObject);
    procedure lcdpagetimegetbtnClick(Sender: TObject);
    procedure ch3modegetbtnClick(Sender: TObject);
    procedure lcdpagetimesetbtnClick(Sender: TObject);
    procedure ch3modesetbtnClick(Sender: TObject);
    procedure ClearStatusMessagesTimerTimer(Sender: TObject);
    procedure DataTimerTimer(Sender: TObject);
    procedure dataupdatestartbtnClick(Sender: TObject);
    procedure dataupdatestopbtnClick(Sender: TObject);
    procedure DisconnectBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure GetATBiasOffsetbtnClick(Sender: TObject);
    procedure GetchoffsetsbtnClick(Sender: TObject);
    procedure GetchpwrbtnClick(Sender: TObject);
    procedure GetFanSpeedbtnClick(Sender: TObject);
    procedure GetPCBValuesbtnClick(Sender: TObject);
    procedure GetValuesbtnClick(Sender: TObject);
    procedure LCDEnablechkboxChange(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure GetFirmwareBtnClick(Sender: TObject);
    procedure ExitBtnClick(Sender: TObject);
    procedure GetTrackingModeBtnClick(Sender: TObject);
    procedure SetATBiasOffsetbtnClick(Sender: TObject);
    procedure Setch1pwroffbtnClick(Sender: TObject);
    procedure Setch1pwronbtnClick(Sender: TObject);
    procedure Setch2pwroffbtnClick(Sender: TObject);
    procedure Setch2pwronbtnClick(Sender: TObject);
    procedure SetchoffsetsbtnClick(Sender: TObject);
    procedure SetFanSpeed100BtnClick(Sender: TObject);
    procedure ConnectBtnClick(Sender: TObject);
    procedure ComPortListChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SetFanSpeedbtnClick(Sender: TObject);
    procedure SetPCBValuesbtnClick(Sender: TObject);
    procedure SetTrackingModebtnClick(Sender: TObject);
    procedure StatusMessageChange(Sender: TObject);
    procedure TrackModeOffsetMinusbtnClick(Sender: TObject);
    procedure TrackModeOffsetPlusbtnClick(Sender: TObject);
    procedure TrackModeOffsetZerobtnClick(Sender: TObject);
    procedure update10srbChange(Sender: TObject);
    procedure update1mrbChange(Sender: TObject);
    procedure update30srbChange(Sender: TObject);
    procedure update5mrbChange(Sender: TObject);
    procedure WriteEEPROMbtnClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

const
  SETTINGS = 'SETTINGS';
  MYVERSION = '0.0.1';

var
  myDewControllerfrm: TmyDewControllerfrm;
  seriallock: TCriticalSection;
  ComPortSet, CloseApp: boolean;
  comspeed: integer;
  CPStatusStr, PortNumber, Ports, CPort: string;
  ser: TBlockSerial;
  CPVal, ResInt: integer;
  status: boolean;
  recstr: string;
  tmpStr: string;
  tmpInt: integer;
  ambient: extended;
  humidity: extended;
  dewpoint: extended;
  ch1temp: extended;
  ch2temp: extended;
  ch3temp: extended;
  ch1pwr: integer;
  ch2pwr: integer;
  ch3pwr: integer;
  ch1offset: extended;
  ch2offset: extended;
  ch3offset: extended;
  pcbtemp: integer;
  pcbthreshold: extended;
  atbiasoffset: extended;
  trackingmode: integer;
  fanspeed: integer;
  lp: integer;
  ch: char;
  tempmode: boolean;
  TempF: extended;
  foldername: string;
  errorlogfilename: string;
  errorlogfilestatus: boolean;
  datalogfilename: string;
  datalogfilestatus: boolean;
  errorlogfiletextOut: TextFile;
  datalogfiletextOut: TextFile;
  INI: TINIFile;
  inifilename: string;
  inifilepath: string;


implementation

{$R *.lfm}

{ TmyDewControllerfrm }

// INI files
// Most if not all parameters are stored in Dew Controller EEPROM
// and are retrieved when connecting, so does not make much sense
// to save them in an INI file as they will be updated when a
// connection to the controller occurs

procedure writeinifile();
var
  lcdenable: integer;
  celsius: integer;
  ch1off: string;
  ch2off: string;
  ch3off: string;
begin
  INI := TINIFile.Create(inifilename);
  try
    if (myDewControllerfrm.CelsiusFahrenheightchkbox.Checked = True) then
    begin
      lcdenable := 1;
    end
    else
    begin
      lcdenable := 0;
    end;
    if (myDewControllerfrm.CelsiusFahrenheightchkbox.Checked = True) then
    begin
      celsius := 1;
    end
    else
    begin
      celsius := 0;
    end;
    ch1off := myDewControllerfrm.Ch1Offsettxtbox.Text;
    ch2off := myDewControllerfrm.Ch2Offsettxtbox.Text;
    ch3off := myDewControllerfrm.Ch3Offsettxtbox.Text;
    INI.WriteInteger(SETTINGS, 'lcdenable', lcdenable);
    INI.WriteInteger(SETTINGS, 'tempmode', celsius);
    INI.WriteString(SETTINGS, 'ch1offset', ch1off);
    INI.WriteString(SETTINGS, 'ch2offset', ch2off);
    INI.WriteString(SETTINGS, 'ch3offset', ch3off);
  finally
    INI.Free;
  end;
end;

procedure readinifile();
var
  lcdenable: integer;
  celsius: integer;
  ch1off: string;
  ch2off: string;
  ch3off: string;
begin
  // check if exists
  INI := TINIFile.Create(inifilename);
  // read parameters
  try
    // read lcd enable
    lcdenable := INI.ReadInteger(SETTINGS, 'lcdenable', 1);
    if (lcdenable = 1) then
    begin
      myDewControllerfrm.LCDEnablechkbox.Checked := True;
    end
    else
    begin
      myDewControllerfrm.LCDEnablechkbox.Checked := False;
    end;
    // read tempmode
    celsius := INI.ReadInteger(SETTINGS, 'tempmode', 1);
    if (celsius = 1) then
    begin
      myDewControllerfrm.CelsiusFahrenheightchkbox.Checked := True;
    end
    else
    begin
      myDewControllerfrm.CelsiusFahrenheightchkbox.Checked := False;
    end;
    ch1off := INI.ReadString(SETTINGS, 'ch1offset', '0.0');
    ch1offset := StrToFloat(ch1off);
    myDewControllerfrm.Ch1Offsettxtbox.Text := ch1off;
    ch2off := INI.ReadString(SETTINGS, 'ch2offset', '0.0');
    ch2offset := StrToFloat(ch2off);
    myDewControllerfrm.Ch2Offsettxtbox.Text := ch2off;
    ch3off := INI.ReadString(SETTINGS, 'ch3offset', '0.0');
    ch3offset := StrToFloat(ch3off);
    myDewControllerfrm.Ch3Offsettxtbox.Text := ch3off;
  finally
    INI.Free;
  end;
end;

procedure TmyDewControllerfrm.FormCreate(Sender: TObject);
begin
  ComPortSet := False;
  seriallock := TCriticalSection.Create;
  plotcount := 0;
  DataTimer.Enabled := False;
  update10srb.Checked := False;
  update30srb.Checked := True;
  update1mrb.Checked := False;
  update5mrb.Checked := False;
  DataTimer.Enabled := False;
  ClearStatusMessagesTimer.Interval := 5000;
  ClearStatusMessagesTimer.Enabled := True;
  TypeComPort.Text := '/dev/ttyS0';
  comspeedcombobox.ItemIndex := 5;          // index starts at 0, 57600 = 5
  logfilenametxtbox.Text := '';
  foldername := '';
  errorlogfilename := '';
  errorlogfilestatus := False;
  datalogfilename := '';
  datalogfilestatus := False;
  myDewControllerfrm.Caption := 'myDewControllerPro3-Linux-' + MYVERSION;
  // ini file
  inifilename := 'myDewControllerPro3L.ini';
  inifilepath := Application.Location;
  readinifile();
  // set focus to Connect button
  //myDewControllerfrm.ConnectBtn.
end;

procedure logmessagetofile(txtstr: string);
var
  mydatetime: string;
begin
  if (errorlogfilename <> '') then
  begin
    if (errorlogfilestatus = True) then
    begin
      // get current time
      mydatetime := '';
      DateTimeToString(mydatetime, 'mm-dd-yyyy-hh-mm-ss', Now);
      append(errorlogfiletextOut);
      writeln(errorlogfiletextOut, mydatetime + ': ' + txtstr);
    end;
  end;
end;

procedure logdatatofile(txtstr: string);
var
  mydatetime: string;
begin
  if (datalogfilename <> '') then
  begin
    if (datalogfilestatus = True) then
    begin
      // get current time
      mydatetime := '';
      DateTimeToString(mydatetime, 'hh-mm-ss', Now);
      append(datalogfiletextOut);
      writeln(datalogfiletextOut, mydatetime + ',' + txtstr);
    end;
  end;
end;

procedure TmyDewControllerfrm.SetFanSpeedbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetFanSpeed: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set Fan speed';
    StatusMessage.Update;
    if (FanSpeed0rb.Checked = True) then
    begin
      tmpStr := 's0#';
    end
    else if (FanSpeed50rb.Checked = True) then
    begin
      tmpStr := 's50#';
    end
    else if (FanSpeed75rb.Checked = True) then
    begin
      tmpStr := 's75#';
    end
    else
    begin
      tmpStr := 's100#';
    end;
    seriallock.Acquire;
    ser.SendString(tmpStr);
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected.';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetFanSpeed: end');
  end;
end;

procedure TmyDewControllerfrm.SetPCBValuesbtnClick(Sender: TObject);
begin
  // INum# None Set fan control under temperature sensor, 0 = off,
  // Num=temp degree in C for when fan to switch ON,
  // if temp is less than Num then fan will be OFF
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetPCBValues: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set PCB threshold';
    StatusMessage.Update;
    if (PCBThresholdtxtbox.Text <> '') then
    begin
      tmpStr := 'I' + PCBThresholdtxtbox.Text + '$';
      seriallock.Acquire;
      ser.SendString(tmpStr);
      seriallock.Release;
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetPCBValues: end');
  end;
end;

procedure TmyDewControllerfrm.SetTrackingModebtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetTrackingMode: start');
  end;
  if ComPortSet = True then
  begin
    // ax#
    // 1=ambient, 2=dewpoint, 3=midpoint
    StatusMessage.Text := 'Set tracking mode';
    StatusMessage.Update;
    if (Ambientrb.Checked = True) then
    begin
      tmpStr := 'a1#';
    end
    else if (MidPointrb.Checked = True) then
    begin
      tmpStr := 'a3#';
    end
    else
    begin
      tmpStr := 'a2#';
    end;
    seriallock.Acquire;
    ser.SendString(tmpStr);
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetTrackingMode: end');
  end;
end;

procedure TmyDewControllerfrm.StatusMessageChange(Sender: TObject);
begin
  ClearStatusMessagesTimer.Enabled := True;
end;

procedure TmyDewControllerfrm.TrackModeOffsetMinusbtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // <# None Decrease offset
    // +3 to -4, firmware takes care of bounds checking
    StatusMessage.Text := 'Set track mode offset -';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('<#');
    seriallock.Release;
    Delay(250);
    // y#
    seriallock.Acquire;
    ser.SendString('y#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to an integer
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      TrackModeOffsetValtxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := 'y# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
end;

procedure TmyDewControllerfrm.TrackModeOffsetPlusbtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // ># None Increase offset
    // +3 to -4, firmware takes care of bounds checking
    StatusMessage.Text := 'Set track mode offset +';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('>#');
    seriallock.Release;
    Delay(250);
    // y#
    seriallock.Acquire;
    ser.SendString('y#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to an integer
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      TrackModeOffsetValtxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := 'y# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
end;

procedure TmyDewControllerfrm.TrackModeOffsetZerobtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // z# None Zero offset
    // +3 to -4, firmware takes care of bounds checking
    StatusMessage.Text := 'Set track mode offset 0';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('z#');
    seriallock.Release;
    Delay(250);
    // y#
    seriallock.Acquire;
    ser.SendString('y#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to an integer
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      TrackModeOffsetValtxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := 'y# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
end;

procedure TmyDewControllerfrm.update10srbChange(Sender: TObject);
begin
  DataTimer.Interval := 10000;
end;

procedure TmyDewControllerfrm.update1mrbChange(Sender: TObject);
begin
  DataTimer.Interval := 60000;
end;

procedure TmyDewControllerfrm.update30srbChange(Sender: TObject);
begin
  DataTimer.Interval := 30000;
end;

procedure TmyDewControllerfrm.update5mrbChange(Sender: TObject);
begin
  DataTimer.Interval := 300000;
end;

procedure TmyDewControllerfrm.WriteEEPROMbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('WriteEEPROM: start');
  end;
  if ComPortSet = True then
  begin
    // w# None Write variables back to EEPROM
    StatusMessage.Text := 'Write EEPROM';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('w#');
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('WriteEEPROM: end');
  end;
end;

procedure TmyDewControllerfrm.ComPortListChange(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    ser.Free;
    ComPortSet := False;
  end;
  // create the serial device
  ser := TBlockSerial.Create;
  PortNumber := TypeComPort.Text;
  // check to see if there is a comport available
  if PortNumber <> '' then
  begin
    ser.Connect(PortNumber);
    // configure the serial port
    // baud rate, number of bits, parity, stops, sw flow control, hw flow control
    ser.Config(57600, 8, 'N', 1, False, False);
    ComPortSet := True;
    // ser.Device - return device name of device currently selected
    // Ser.InstanceActive - check to see if connected (1=connected)
    if Ser.InstanceActive then
    begin
      CPStatusStr := 'Connected';
      ComPortSet := True;
    end
    else
    begin
      CPStatusStr := 'Not connected';
      ComPortSet := False;
    end;
    // Get serial device name and status - display in status bar
    StatusMessage.Text := Ser.Device + ' ' + CPStatusStr;
  end
  else
  begin
    StatusMessage.Text := 'There is no COM Port available';
  end;
end;

procedure TmyDewControllerfrm.GetFirmwareBtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetFirmwareVersion: start');
  end;
  if ComPortSet = True then
  begin
    // send get version number v#
    StatusMessage.Text := 'Get firmware';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('v#');
    // now get the response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := 'Firmware: ' + recstr;
    end
    else
    begin
      StatusMessage.Text := 'v# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetFirmwareVersion: end');
  end;
end;

procedure TmyDewControllerfrm.DisconnectBtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Disconnect: start');
  end;
  if ComPortSet = True then
  begin
    CPStatusStr := PortNumber + ' disconnected';
    ComPortSet := False;
    seriallock.Release;
    //ser.Free();     // causes a SIGENV error when closing
  end
  else
  begin
    CPStatusStr := 'Not connected';
    ComPortSet := False;
    seriallock.Release;
  end;
  StatusMessage.Text := CPStatusStr;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Disconnect: end');
  end;
end;

procedure TmyDewControllerfrm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  FreeAndNil(seriallock);
  ser.Free;
end;

procedure TmyDewControllerfrm.GetATBiasOffsetbtnClick(Sender: TObject);
begin
  // get ATBiasOffset
  // B# Bvalue$ Get the ATBias value
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetATBias: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Get AT bias offset';
    StatusMessage.Update;
    // get ambient temperature offset
    seriallock.Acquire;
    ser.SendString('B#');
    // now get the response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to a float
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      atbiasoffset := StrToFloat(tmpStr);
      lp := Round(atbiasoffset);
      atbiasoffset := lp;
      AtBiasOffsettxtbox.Text := atbiasoffset.ToString;
    end
    else
    begin
      StatusMessage.Text := 'B# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetATBias: end');
  end;
end;

procedure TmyDewControllerfrm.GetchoffsetsbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Getchoffsets: start');
  end;
  // ?# ?ch1offset#ch2offset#ch3offset$
  // Get the ch1offset and ch2offset and ch3offset values (returns float values as strings)
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Get ch1-3 offsets';
    StatusMessage.Update;
    // get ch1-ch3 temperature offsets
    seriallock.Acquire;
    ser.SendString('?#');
    // now get the response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '#') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to double
      ch1offset := StrToFloat(tmpStr);
      tmpStr := FormatFloat('0.000', ch1offset);
      Ch1Offsettxtbox.Text := tmpStr;
      // get past #
      lp := lp + 1;
      tmpStr := '';
      ch := recstr[lp];
      while (ch <> '#') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to double
      ch2offset := StrToFloat(tmpStr);
      tmpStr := FormatFloat('0.000', ch2offset);
      Ch2Offsettxtbox.Text := tmpStr;
      // get till $
      lp := lp + 1;
      tmpStr := '';
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to double
      ch3offset := StrToFloat(tmpStr);
      tmpStr := FormatFloat('0.000', ch3offset);
      Ch3Offsettxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := '?# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Getchoffsets: end');
  end;
end;

procedure TmyDewControllerfrm.GetchpwrbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetPwr: start');
  end;
  if ComPortSet = True then
  begin
    // W# Wch1pwr#ch2pwr#ch3pwr$ Get the power settings for ch1/ch2/ch3
    // get ch1-ch3 power levels
    StatusMessage.Text := 'Get ch1-3 power levels';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('W#');
    // now get the response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '#') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to Integer
      ch1pwr := StrToInt(tmpStr);
      Ch1Pwrtxtbox.Text := tmpStr;
      // get past #
      lp := lp + 1;
      tmpStr := '';
      ch := recstr[lp];
      while (ch <> '#') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to Integer
      ch2pwr := StrToInt(tmpStr);
      Ch2Pwrtxtbox.Text := tmpStr;
      // get to $
      lp := lp + 1;
      tmpStr := '';
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // convert tmpStr to Integer
      tmpStr := tmpStr + '';
      //ch3pwr := StrToInt(tmpStr);
      Ch3Pwrtxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := 'W# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetPwr: end');
  end;
end;


procedure TmyDewControllerfrm.GetFanSpeedbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetFanSpeed: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Get fan speed';
    StatusMessage.Update;
    // get fanspeed
    seriallock.Acquire;
    ser.SendString('F#');
    // now get the response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to a Integer
      tmpStr := Copy(recstr, 2, Length(recstr) - 2);
      fanspeed := StrToInt(tmpStr);
      if fanspeed = 0 then
      begin
        FanSpeed0rb.Checked := True;
        FanSpeed50rb.Checked := False;
        FanSpeed75rb.Checked := False;
        FanSpeed100rb.Checked := False;
      end
      else if fanspeed = 50 then
      begin
        FanSpeed0rb.Checked := False;
        FanSpeed50rb.Checked := True;
        FanSpeed75rb.Checked := False;
        FanSpeed100rb.Checked := False;
      end
      else if fanspeed = 75 then
      begin
        FanSpeed0rb.Checked := False;
        FanSpeed50rb.Checked := False;
        FanSpeed75rb.Checked := True;
        FanSpeed100rb.Checked := False;
      end
      else if fanspeed = 100 then
      begin
        FanSpeed0rb.Checked := False;
        FanSpeed50rb.Checked := False;
        FanSpeed75rb.Checked := False;
        FanSpeed100rb.Checked := True;
      end;
    end
    else
    begin
      StatusMessage.Text := 'F# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetFanSpeed: end');
  end;
end;

procedure TmyDewControllerfrm.GetPCBValuesbtnClick(Sender: TObject);
begin
  // get the PCB Temperature and PCB Threshold
  // K# KBoardTemp$ Get the current board temperature (in Celsius)
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetPCBValues: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Get PCB values';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('K#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      pcbtemp := StrToInt(tmpStr);
      if (tempmode = False) then
      begin
        PCBTemptxtbox.Text := tmpStr;
      end
      else
      begin
        // convert to fahrenheight
        // TempF = (ch3tempval * 1.8) + 32;
        TempF := (pcbtemp * 1.8) + 32;
        tmpStr := FormatFloat('0.0', TempF);
        PCBTemptxtbox.Text := tmpStr;
      end;
    end
    else
    begin
      StatusMessage.Text := 'K# - No response from controller';
    end;

    // get threshold
    // J# JFanTemp$ Get the board temperature setting at which the fan is switched on. 0=OFF
    seriallock.Acquire;
    ser.SendString('J#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      pcbthreshold := StrToInt(tmpStr);
      if (tempmode = False) then
      begin
        PCBThresholdtxtbox.Text := tmpStr;
      end
      else
      begin
        // convert to fahrenheight
        // TempF = (ch3tempval * 1.8) + 32;
        TempF := (pcbthreshold * 1.8) + 32;
        tmpStr := FormatFloat('0.0', TempF);
        PCBThresholdtxtbox.Text := tmpStr;
      end;
    end
    else
    begin
      StatusMessage.Text := 'J# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetPCBValues: end');
  end;
end;

procedure TmyDewControllerfrm.GetValuesbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetValues: start');
  end;
  if ComPortSet = True then
  begin
    // get tracking mode
    // set radio buttons for tracking mode
    StatusMessage.Text := 'Get all values';
    StatusMessage.Update;
    StatusMessage.Text := 'Get tracking mode';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('T#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // recstr is Tx where 1=Ambient, 2=Dewpoint, 3=Midpoint
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // Convert to a integer
      trackingmode := StrToInt(tmpStr);
      if trackingmode = 1 then
      begin
        Ambientrb.Checked := True;
        MidPointrb.Checked := False;
        DewPointrb.Checked := False;
      end
      else if trackingmode = 2 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := False;
        DewPointrb.Checked := True;
      end
      else if trackingmode = 3 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := True;
        DewPointrb.Checked := False;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ambient temperature
      StatusMessage.Text := 'Get ambient';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('A#');
      recstr := '';
      // now get the response
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        ambient := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ambient);
        if (tempmode = False) then
        begin
          AmbientTemptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ambient * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          AmbientTemptxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ambient temperature offset
      StatusMessage.Text := 'Get ambient offset';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('B#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        atbiasoffset := StrToFloat(tmpStr);
        lp := Round(atbiasoffset);
        atbiasoffset := lp;
        AtBiasOffsettxtbox.Text := atbiasoffset.ToString;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get humidity
      StatusMessage.Text := 'Get humidity';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('R#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        humidity := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', humidity);
        Humiditytxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get dew point
      StatusMessage.Text := 'Get dew point';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('D#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        dewpoint := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', dewpoint);
        if (tempmode = False) then
        begin
          DewPointtxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (dewpoint * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          DewPointtxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 temperatures
      StatusMessage.Text := 'Get ch1-3 temperature';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('C#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch1temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch1temp);
        if (tempmode = False) then
        begin
          Ch1Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch1temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch1Temptxtbox.Text := tmpStr;
        end;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch2temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch2temp);
        if (tempmode = False) then
        begin
          Ch2Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch2temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch2Temptxtbox.Text := tmpStr;
        end;
        // get to $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch3temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch3temp);
        if (tempmode = False) then
        begin
          Ch3Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch3temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch3Temptxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 temperature offsets
      StatusMessage.Text := 'Get ch1-3 offsets';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('?#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch1offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch1offset);
        Ch1Offsettxtbox.Text := tmpStr;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch2offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch2offset);
        Ch2Offsettxtbox.Text := tmpStr;
        // get till $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch3offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch3offset);
        Ch3Offsettxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 power levels
      StatusMessage.Text := 'Get ch1-3 power levels';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('W#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        ch1pwr := StrToInt(tmpStr);
        Ch1Pwrtxtbox.Text := tmpStr;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        ch2pwr := StrToInt(tmpStr);
        Ch2Pwrtxtbox.Text := tmpStr;
        // get to $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        tmpStr := tmpStr + '';
        //ch3pwr := StrToInt(tmpStr);
        Ch3Pwrtxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get fanspeed
      StatusMessage.Text := 'Get fan speed';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('F#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a Integer
        tmpStr := Copy(recstr, 2, Length(recstr) - 2);
        fanspeed := StrToInt(tmpStr);
        if fanspeed = 0 then
        begin
          FanSpeed0rb.Checked := True;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 50 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := True;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 75 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := True;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 100 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := True;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get the PCB Temperature and PCB Threshold
      // K# KBoardTemp$ Get the current board temperature (in Celsius)
      StatusMessage.Text := 'Get PCB values';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('K#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        pcbtemp := StrToInt(tmpStr);
        if (tempmode = False) then
        begin
          PCBTemptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (pcbtemp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          PCBTemptxtbox.Text := tmpStr;
        end;
        PCBTemptxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get threshold
      // J# JFanTemp$ Get the board temperature setting at which the fan is switched on. 0=OFF
      seriallock.Acquire;
      ser.SendString('J#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        pcbthreshold := StrToInt(tmpStr);
        if (tempmode = False) then
        begin
          PCBThresholdtxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (pcbthreshold * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          PCBThresholdtxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // y#
      StatusMessage.Text := 'Get tracking mode offset';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('y#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to an integer
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        TrackModeOffsetValtxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'y# - No response from controller';
      end;

      // H# get lcd page display time
      StatusMessage.Text := 'Get lcd page display time';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('H#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // recstr is number 2000, 2500, 3000, 3500, 4000
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // Convert to a integer
        lp := StrToInt(tmpStr);
        if (lp = 2000) then
        begin
          lcdpagetime2srb.Checked := True;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 2500) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := True;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 3000) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := True;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 3500) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := True;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 4000) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := True;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // E#
      StatusMessage.Text := 'Get ch3 mode';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('E#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // recstr is (0-none, 1=channel1, 2=channel2, 3=manual, 4=temp probe 3)
        tmpStr := MidStr(recstr, 2, 1);
        // Convert to a integer
        tmpInt := StrToInt(tmpStr);
        if tmpInt = 0 then
        begin
          ch3modeoffrb.Checked := True;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 1 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := True;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 2 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := True;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 3 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := True;
        end
        else if tmpInt = 4 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := True;
          ch3modemanualrb.Checked := False;
        end;
      end
      else
      begin
        StatusMessage.Text := 'E# - No response from controller';
      end;

      // other calls go here

      StatusMessage.Text := 'Done';
      StatusMessage.Update;
    end
    else
    begin
      StatusMessage.Text := 'No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetValues: end');
  end;
end;

procedure TmyDewControllerfrm.LCDEnablechkboxChange(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set LCD enable status';
    StatusMessage.Update;
    if (LCDEnablechkbox.Checked = True) then
    begin
      seriallock.Acquire;
      ser.SendString('}#');
      seriallock.Release;
    end
    else
    begin
      seriallock.Acquire;
      ser.SendString('{#');
      seriallock.Release;
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
end;

procedure TmyDewControllerfrm.ExitMenuClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // release the COM port
    seriallock.Release;
    FreeAndNil(seriallock);
    ser.Free;
  end;
  Sleep(1000);
  // save settings to ini file
  writeinifile;
  // exit the application
  Close;
end;

procedure TmyDewControllerfrm.AboutMenuClick(Sender: TObject);
begin
  Aboutfrm.ShowModal;
end;

procedure TmyDewControllerfrm.ChartClick(Sender: TObject);
begin
  Chartfrm.Show;
end;

procedure TmyDewControllerfrm.GraphMenuClick(Sender: TObject);
begin
  // show graphtemp form
  // Graphfrm.Show;
end;

procedure TmyDewControllerfrm.setfolderbtnClick(Sender: TObject);
var
  status: boolean;
  mydatetime: string;
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetFolder: start');
  end;
  // get folder name for errorlogfile
  errorlogfilename := '';
  foldername := '';
  logfilenametxtbox.Text := '';
  errorlogfilestatus := False;
  mydatetime := '';
  // get folder name
  status := SelectDirectoryDialog.Execute;
  if (status = True) then
  begin
    // get current time
    DateTimeToString(mydatetime, 'mm-dd-yyyy-hh-mm', Now);
    if (mydatetime <> '') then
    begin
      // construct filenames
      errorlogfilename := SelectDirectoryDialog.Filename +
        'myDewControllerPro3-log-' + mydatetime + '.txt';
      datalogfilename :=
        SelectDirectoryDialog.Filename + 'myDewControllerPro3-Datalog-' +
        mydatetime + '.csv';
      //ShowMessage(errorlogfilename);
      logfilenametxtbox.Text := errorlogfilename;
      logfilenametxtbox.Update;
      // create files for writing
      AssignFile(errorlogfiletextOut, errorlogfilename);
      AssignFile(datalogfiletextOut, datalogfilename);
      try
        rewrite(errorlogfiletextOut);
        StatusMessage.Text := 'Error Log file created';
        errorlogfilestatus := True;
        LogMessagetoFile('myDewControllerPro3-Linux');
        LogMessagetoFile('Version: ' + MYVERSION);
        LogMessagetoFile(mydatetime);
        CloseFile(errorlogfiletextOut);

        rewrite(datalogfiletextOut);
        StatusMessage.Text := 'Data Log file created';
        datalogfilestatus := True;
        append(datalogfiletextOut);
        writeln(datalogfiletextOut, '// myDewControllerPro3 DataLogfile');
        CloseFile(datalogfiletextOut);
      except
        on E: EInOutError do
          StatusMessage.Text := 'Error: Log file NOT created';
        //ShowMessage('Error creating ' + errorlogfilename + ' for append. ' + E.Message);
      end;
      // write back into filename and logfilenametxtbox.Text
    end
    else
    begin
      ShowMessage('Could not create filename. Please try again.');
      errorlogfilestatus := False;
      if (errorloggingchkbox.Checked = True) then
      begin
        logmessagetofile('SetFolder: Could not create filename');
      end;
    end;
  end
  else
  begin
    ShowMessage('No folder selected. Please try again.');
    errorlogfilestatus := False;
    if (errorloggingchkbox.Checked = True) then
    begin
      logmessagetofile('SetFolder: No folder selected');
    end;
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetFolder: end');
  end;
end;

procedure TmyDewControllerfrm.CelsiusFahrenheightchkboxChange(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // c# None Display in Celsius
    // f# None Display in Fahrenheit
    StatusMessage.Text := 'Set temp mode C or F';
    StatusMessage.Update;
    if (CelsiusFahrenheightchkbox.Checked = True) then
    begin
      tempmode := True;  // fahrenheight
      seriallock.Acquire;
      ser.SendString('f#');
      seriallock.Release;
    end
    else
    begin
      tempmode := False; // celsius
      seriallock.Acquire;
      ser.SendString('c#');
      seriallock.Release;
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
end;

procedure TmyDewControllerfrm.lcdpagetimegetbtnClick(Sender: TObject);
begin
  // H# Hfloat_num$ Get the time in milliseconds that an LCD page is displayed for
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('LCDPageTimeGet: start');
  end;
  if ComPortSet = True then
  begin
    // H#
    StatusMessage.Text := 'Get lcd page display time';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('H#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // recstr is number 2000, 2500, 3000, 3500, 4000
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // Convert to a integer
      lp := StrToInt(tmpStr);
      if (lp = 2000) then
      begin
        lcdpagetime2srb.Checked := True;
        lcdpagetime25srb.Checked := False;
        lcdpagetime3srb.Checked := False;
        lcdpagetime35srb.Checked := False;
        lcdpagetime4srb.Checked := False;
      end
      else if (lp = 2500) then
      begin
        lcdpagetime2srb.Checked := False;
        lcdpagetime25srb.Checked := True;
        lcdpagetime3srb.Checked := False;
        lcdpagetime35srb.Checked := False;
        lcdpagetime4srb.Checked := False;
      end
      else if (lp = 3000) then
      begin
        lcdpagetime2srb.Checked := False;
        lcdpagetime25srb.Checked := False;
        lcdpagetime3srb.Checked := True;
        lcdpagetime35srb.Checked := False;
        lcdpagetime4srb.Checked := False;
      end
      else if (lp = 3500) then
      begin
        lcdpagetime2srb.Checked := False;
        lcdpagetime25srb.Checked := False;
        lcdpagetime3srb.Checked := False;
        lcdpagetime35srb.Checked := True;
        lcdpagetime4srb.Checked := False;
      end
      else if (lp = 4000) then
      begin
        lcdpagetime2srb.Checked := False;
        lcdpagetime25srb.Checked := False;
        lcdpagetime3srb.Checked := False;
        lcdpagetime35srb.Checked := False;
        lcdpagetime4srb.Checked := True;
      end;
    end
    else
    begin
      StatusMessage.Text := 'H# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('LCDPageTimeGet: end');
  end;
end;

procedure TmyDewControllerfrm.ch3modegetbtnClick(Sender: TObject);
begin
  // E# Emode $ Get which dewstrap channel the 3rd Dewstrap is shadowing
  // (0-none, 1=channel1, 2=channel2, 3=manual, 4=temp probe 3)
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetCh3Mode: start');
  end;
  if ComPortSet = True then
  begin
    // E#
    StatusMessage.Text := 'Get ch3 mode';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('E#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // recstr is (0-none, 1=channel1, 2=channel2, 3=manual, 4=temp probe 3)
      tmpStr := MidStr(recstr, 2, 1);
      // Convert to a integer
      tmpInt := StrToInt(tmpStr);
      if tmpInt = 0 then
      begin
        ch3modeoffrb.Checked := True;
        ch3modech1rb.Checked := False;
        ch3modech2rb.Checked := False;
        ch3modetempprobe3rb.Checked := False;
        ch3modemanualrb.Checked := False;
      end
      else if tmpInt = 1 then
      begin
        ch3modeoffrb.Checked := False;
        ch3modech1rb.Checked := True;
        ch3modech2rb.Checked := False;
        ch3modetempprobe3rb.Checked := False;
        ch3modemanualrb.Checked := False;
      end
      else if tmpInt = 2 then
      begin
        ch3modeoffrb.Checked := False;
        ch3modech1rb.Checked := False;
        ch3modech2rb.Checked := True;
        ch3modetempprobe3rb.Checked := False;
        ch3modemanualrb.Checked := False;
      end
      else if tmpInt = 3 then
      begin
        ch3modeoffrb.Checked := False;
        ch3modech1rb.Checked := False;
        ch3modech2rb.Checked := False;
        ch3modetempprobe3rb.Checked := False;
        ch3modemanualrb.Checked := True;
      end
      else if tmpInt = 4 then
      begin
        ch3modeoffrb.Checked := False;
        ch3modech1rb.Checked := False;
        ch3modech2rb.Checked := False;
        ch3modetempprobe3rb.Checked := True;
        ch3modemanualrb.Checked := False;
      end;
    end
    else
    begin
      StatusMessage.Text := 'E# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetCh3Mode: end');
  end;
end;

procedure TmyDewControllerfrm.lcdpagetimesetbtnClick(Sender: TObject);
begin
  // bNum# None Set LCD Display refresh rate (Num is in milliseconds,
  // 2.5 seconds to 5.0 seconds on 0.5 second intervals)
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('LCDPageTimeSet: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set lcd page display time';
    StatusMessage.Update;
    seriallock.Acquire;
    if (lcdpagetime2srb.Checked = True) then
    begin
      ser.SendString('b2000#');
    end
    else if (lcdpagetime25srb.Checked = True) then
    begin
      ser.SendString('b2500#');
    end
    else if (lcdpagetime3srb.Checked = True) then
    begin
      ser.SendString('b3000#');
    end
    else if (lcdpagetime35srb.Checked = True) then
    begin
      ser.SendString('b3500#');
    end
    else if (lcdpagetime4srb.Checked = True) then
    begin
      ser.SendString('b4000#');
    end;
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('LCDPageTimeSet: end');
  end;
end;

procedure TmyDewControllerfrm.ch3modesetbtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // SNum# None Set the 3rd Dewstrap to Num
    // (0=disabled, 1=dewstrap1, 2=dewstrap2, 3=Manual, 4=use temp probe3)
    if (errorloggingchkbox.Checked = True) then
    begin
      logmessagetofile('SetCh3Mode: start');
    end;
    StatusMessage.Text := 'Set ch3 mode';
    StatusMessage.Update;
    seriallock.Acquire;
    if (ch3modeoffrb.Checked = True) then
    begin
      tmpStr := 'S0#';
      StatusMessage.Text := 'Setting ch3 mode to OFF';
    end
    else if (ch3modech1rb.Checked = True) then
    begin
      tmpStr := 'S1#';
      StatusMessage.Text := 'Setting ch3 mode to ch1';
    end
    else if (ch3modech2rb.Checked = True) then
    begin
      tmpStr := 'S2#';
      StatusMessage.Text := 'Setting ch3 mode to ch2';
    end
    else if (ch3modemanualrb.Checked = True) then
    begin
      tmpStr := 'S3#';
      StatusMessage.Text := 'Setting ch3 mode to manual';
    end
    else
    begin
      tmpStr := 'S4#';
      StatusMessage.Text := 'Setting ch3 mode to Temp probe 3';
    end;
    ser.SendString(tmpStr);
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh3Mode: end');
  end;
end;

procedure TmyDewControllerfrm.ClearStatusMessagesTimerTimer(Sender: TObject);
begin
  StatusMessage.Text := '';
  ClearStatusMessagesTimer.Enabled := False;
end;

procedure TmyDewControllerfrm.DataTimerTimer(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataTimer-Update: start');
  end;
  if ComPortSet = True then
  begin
    // get tracking mode
    // set radio buttons for tracking mode
    StatusMessage.Text := 'Get all values';
    StatusMessage.Update;
    StatusMessage.Text := 'Get tracking mode';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('T#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // recstr is Tx where 1=Ambient, 2=Dewpoint, 3=Midpoint
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      // Convert to a integer
      trackingmode := StrToInt(tmpStr);
      if trackingmode = 1 then
      begin
        Ambientrb.Checked := True;
        MidPointrb.Checked := False;
        DewPointrb.Checked := False;
      end
      else if trackingmode = 2 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := False;
        DewPointrb.Checked := True;
      end
      else if trackingmode = 3 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := True;
        DewPointrb.Checked := False;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ambient temperature
      StatusMessage.Text := 'Get ambient';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('A#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        ambient := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ambient);
        if (tempmode = False) then
        begin
          AmbientTemptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ambient * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          AmbientTemptxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ambient temperature offset
      StatusMessage.Text := 'Get ambient offset';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('B#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        atbiasoffset := StrToFloat(tmpStr);
        lp := Round(atbiasoffset);
        atbiasoffset := lp;
        AtBiasOffsettxtbox.Text := atbiasoffset.ToString;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get humidity
      StatusMessage.Text := 'Get humidity';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('R#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a float
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        humidity := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', humidity);
        Humiditytxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get dew point
      StatusMessage.Text := 'Get dew point';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('D#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        dewpoint := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', dewpoint);
        if (tempmode = False) then
        begin
          DewPointtxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (dewpoint * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          DewPointtxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 temperatures
      StatusMessage.Text := 'Get ch1-3 temperature';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('C#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch1temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch1temp);
        if (tempmode = False) then
        begin
          Ch1Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch1temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch1Temptxtbox.Text := tmpStr;
        end;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch2temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch2temp);
        if (tempmode = False) then
        begin
          Ch2Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch2temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch2Temptxtbox.Text := tmpStr;
        end;
        // get to $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch3temp := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch3temp);
        if (tempmode = False) then
        begin
          Ch3Temptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (ch3temp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          Ch3Temptxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 temperature offsets
      StatusMessage.Text := 'Get ch1-3 offsets';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('?#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch1offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch1offset);
        Ch1Offsettxtbox.Text := tmpStr;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch2offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch2offset);
        Ch2Offsettxtbox.Text := tmpStr;
        // get till $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to double
        ch3offset := StrToFloat(tmpStr);
        tmpStr := FormatFloat('0.000', ch3offset);
        Ch3Offsettxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get ch1-ch3 power levels
      StatusMessage.Text := 'Get ch1-3 power levels';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('W#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        ch1pwr := StrToInt(tmpStr);
        Ch1Pwrtxtbox.Text := tmpStr;
        // get past #
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '#') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        ch2pwr := StrToInt(tmpStr);
        Ch2Pwrtxtbox.Text := tmpStr;
        // get to $
        lp := lp + 1;
        tmpStr := '';
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // convert tmpStr to Integer
        tmpStr := tmpStr + '';
        //ch3pwr := StrToInt(tmpStr);
        Ch3Pwrtxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get fanspeed
      StatusMessage.Text := 'Get fan speed';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('F#');
      // now get the response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to a Integer
        tmpStr := Copy(recstr, 2, Length(recstr) - 2);
        fanspeed := StrToInt(tmpStr);
        if fanspeed = 0 then
        begin
          FanSpeed0rb.Checked := True;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 50 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := True;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 75 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := True;
          FanSpeed100rb.Checked := False;
        end
        else if fanspeed = 100 then
        begin
          FanSpeed0rb.Checked := False;
          FanSpeed50rb.Checked := False;
          FanSpeed75rb.Checked := False;
          FanSpeed100rb.Checked := True;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get the PCB Temperature and PCB Threshold
      // K# KBoardTemp$ Get the current board temperature (in Celsius)
      StatusMessage.Text := 'Get PCB values';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('K#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        pcbtemp := StrToInt(tmpStr);
        if (tempmode = False) then
        begin
          PCBTemptxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (pcbtemp * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          PCBTemptxtbox.Text := tmpStr;
        end;
        PCBTemptxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // get threshold
      // J# JFanTemp$ Get the board temperature setting at which the fan is switched on. 0=OFF
      seriallock.Acquire;
      ser.SendString('J#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        pcbthreshold := StrToInt(tmpStr);
        if (tempmode = False) then
        begin
          PCBThresholdtxtbox.Text := tmpStr;
        end
        else
        begin
          // convert to fahrenheight
          TempF := (pcbthreshold * 1.8) + 32;
          tmpStr := FormatFloat('0.0', TempF);
          PCBThresholdtxtbox.Text := tmpStr;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // y#
      StatusMessage.Text := 'Get tracking mode offset';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('y#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // convert to an integer
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        TrackModeOffsetValtxtbox.Text := tmpStr;
      end
      else
      begin
        StatusMessage.Text := 'y# - No response from controller';
      end;

      // H# get lcd page display time
      StatusMessage.Text := 'Get lcd page display time';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('H#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // recstr is number 2000, 2500, 3000, 3500, 4000
        tmpStr := '';
        lp := 2;
        ch := recstr[lp];
        while (ch <> '$') do
        begin
          tmpStr := tmpStr + ch;
          lp := lp + 1;
          ch := recstr[lp];
        end;
        // Convert to a integer
        lp := StrToInt(tmpStr);
        if (lp = 2000) then
        begin
          lcdpagetime2srb.Checked := True;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 2500) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := True;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 3000) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := True;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 3500) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := True;
          lcdpagetime4srb.Checked := False;
        end
        else if (lp = 4000) then
        begin
          lcdpagetime2srb.Checked := False;
          lcdpagetime25srb.Checked := False;
          lcdpagetime3srb.Checked := False;
          lcdpagetime35srb.Checked := False;
          lcdpagetime4srb.Checked := True;
        end;
      end
      else
      begin
        StatusMessage.Text := 'No response from controller';
      end;

      // E#
      StatusMessage.Text := 'Get ch3 mode';
      StatusMessage.Update;
      seriallock.Acquire;
      ser.SendString('E#');
      // now get response
      recstr := '';
      recstr := ser.RecvTerminated(5000, '$');
      seriallock.Release;
      if (recstr <> '') then
      begin
        recstr := recstr + '$';
        StatusMessage.Text := recstr;
        // recstr is (0-none, 1=channel1, 2=channel2, 3=manual, 4=temp probe 3)
        tmpStr := MidStr(recstr, 2, 1);
        // Convert to a integer
        tmpInt := StrToInt(tmpStr);
        if tmpInt = 0 then
        begin
          ch3modeoffrb.Checked := True;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 1 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := True;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 2 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := True;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := False;
        end
        else if tmpInt = 3 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := False;
          ch3modemanualrb.Checked := True;
        end
        else if tmpInt = 4 then
        begin
          ch3modeoffrb.Checked := False;
          ch3modech1rb.Checked := False;
          ch3modech2rb.Checked := False;
          ch3modetempprobe3rb.Checked := True;
          ch3modemanualrb.Checked := False;
        end;
      end
      else
      begin
        StatusMessage.Text := 'E# - No response from controller';
      end;

      // other calls go here

      // if chart then add series
      addtemptochart(ambient, dewpoint);

      StatusMessage.Text := 'Data timer update done';
      StatusMessage.Update;
    end
    else
    begin
      StatusMessage.Text := 'No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataTimer-Update: end');
  end;
end;


procedure TmyDewControllerfrm.dataupdatestartbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataUpdate: start');
  end;
  if ComPortSet = True then
  begin
    DataTimer.Enabled := False;
    if (update10srb.Checked = True) then
    begin
      DataTimer.Interval := 10000;
    end
    else if (update30srb.Checked = True) then
    begin
      DataTimer.Interval := 30000;
    end
    else if (update1mrb.Checked = True) then
    begin
      DataTimer.Interval := 60000;
    end
    else if (update5mrb.Checked = True) then
    begin
      DataTimer.Interval := 300000;
    end;
    DataTimer.Enabled := True;
  end
  else
  begin
    StatusMessage.Text := 'Com Port not set';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataUpdate: end');
  end;
end;

procedure TmyDewControllerfrm.dataupdatestopbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataUpdateStop: start');
  end;
  DataTimer.Enabled := False;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('DataUpdateStop: end');
  end;
end;

procedure TmyDewControllerfrm.ExitBtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    // release the COM port
    seriallock.Release;
    FreeAndNil(seriallock);
    ser.Free;
  end;
  Sleep(1000);
  // save settings to ini file
  writeinifile;
  // exit the application
  Close;
end;

procedure TmyDewControllerfrm.GetTrackingModeBtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetTrackingMode: start');
  end;
  if ComPortSet = True then
  begin
    // T#
    StatusMessage.Text := 'Get tracking mode and offset';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('T#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // recstr is Tx where 1=Ambient, 2=Dewpoint, 3=Midpoint
      tmpStr := MidStr(recstr, 2, 1);
      // Convert to a integer
      tmpInt := StrToInt(tmpStr);
      if tmpInt = 1 then
      begin
        Ambientrb.Checked := True;
        MidPointrb.Checked := False;
        DewPointrb.Checked := False;
      end
      else if tmpInt = 2 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := False;
        DewPointrb.Checked := True;
      end
      else if tmpInt = 3 then
      begin
        Ambientrb.Checked := False;
        MidPointrb.Checked := True;
        DewPointrb.Checked := False;
      end;
    end
    else
    begin
      StatusMessage.Text := 'T# - No response from controller';
    end;
    recstr := '';

    // y#
    seriallock.Acquire;
    ser.SendString('y#');
    // now get response
    recstr := '';
    recstr := ser.RecvTerminated(5000, '$');
    seriallock.Release;
    if (recstr <> '') then
    begin
      recstr := recstr + '$';
      StatusMessage.Text := recstr;
      // convert to an integer
      tmpStr := '';
      lp := 2;
      ch := recstr[lp];
      while (ch <> '$') do
      begin
        tmpStr := tmpStr + ch;
        lp := lp + 1;
        ch := recstr[lp];
      end;
      TrackModeOffsetValtxtbox.Text := tmpStr;
    end
    else
    begin
      StatusMessage.Text := 'y# - No response from controller';
    end;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('GetTrackingMode: end');
  end;
end;


procedure TmyDewControllerfrm.SetATBiasOffsetbtnClick(Sender: TObject);
begin
  // set ATBiasOffset Value
  // eNum#  Set ATBIAS, Num is a value between +3 and -4
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetATBias: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set AT bias offfset';
    StatusMessage.Update;
    tmpStr := 'e' + AtBiasOffsettxtbox.Text + '#';
    seriallock.Acquire;
    ser.SendString(tmpStr);
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetATBias: end');
  end;
end;

procedure TmyDewControllerfrm.Setch1pwroffbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh1PwrOff: start');
  end;
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set ch1 power OFF';
    StatusMessage.Update;
    // n# None Turn off 100% boost to channels, switch to normal mode
    seriallock.Acquire;
    ser.SendString('n#');
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh1PwrOff: end');
  end;
end;

procedure TmyDewControllerfrm.Setch1pwronbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh1PwrOn: start');
  end;
  if ComPortSet = True then
  begin
    // 1# None Override mode, boost 100% to channel 1
    StatusMessage.Text := 'Set ch1 power 100%';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('1#');
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh1PwrOn: end');
  end;
end;

procedure TmyDewControllerfrm.Setch2pwroffbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh2PwrOff: start');
  end;
  if ComPortSet = True then
  begin
    // n# None Turn off 100% boost to channels, switch to normal mode
    StatusMessage.Text := 'Set ch2 power OFF';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('n#');
    seriallock.Release;
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh2PwrOff: end');
  end;
end;

procedure TmyDewControllerfrm.Setch2pwronbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh2PwrOn: start');
  end;
  if ComPortSet = True then
  begin
    // 2# None Override mode, boost 100% to channel 2
    StatusMessage.Text := 'Set ch2 power 100%';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('2#');
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('SetCh2PwrOn: end');
  end;
end;

procedure TmyDewControllerfrm.SetchoffsetsbtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Setchoffsets: start');
  end;
  if ComPortSet = True then
  begin
    // [# None Set ch1offset value - expects a float following command
    // ]# None Set ch2offset value
    // %# None Set ch3offset value
    StatusMessage.Text := 'Set ch offsets';
    StatusMessage.Update;
    tmpStr := '[' + Ch1Offsettxtbox.Text + '#';
    seriallock.Acquire;
    ser.SendString(tmpStr);
    tmpStr := ']' + Ch2Offsettxtbox.Text + '#';
    ser.SendString(tmpStr);
    tmpStr := '%' + Ch3Offsettxtbox.Text + '#';
    ser.SendString(tmpStr);
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Not connected';
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Setchoffsets: end');
  end;
end;

procedure TmyDewControllerfrm.SetFanSpeed100BtnClick(Sender: TObject);
begin
  if ComPortSet = True then
  begin
    StatusMessage.Text := 'Set fan speed 100%';
    StatusMessage.Update;
    seriallock.Acquire;
    ser.SendString('F100#');
    seriallock.Release;
  end
  else
  begin
    StatusMessage.Text := 'Com Port not set';
  end;
end;

procedure TmyDewControllerfrm.ConnectBtnClick(Sender: TObject);
begin
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Connect: start');
  end;
  if ComPortSet = True then
  begin
    ser.Free;
    ComPortSet := False;
  end;
  // create the serial device
  ser := TBlockSerial.Create;
  PortNumber := TypeComPort.Text;
  if PortNumber <> '' then
  begin
    ser.Connect(PortNumber);
    // configure the serial port
    // baud rate, number of bits, parity, stops, sw flow control, hw flow control
    // set comportspeed
    case comspeedcombobox.ItemIndex of
      0: comspeed := 9600;
      1: comspeed := 14400;
      2: comspeed := 19200;
      3: comspeed := 28800;
      4: comspeed := 38400;
      5: comspeed := 57600;
      6: comspeed := 115200;
    end;
    ser.Config(comspeed, 8, 'N', 1, False, False);
    ComPortSet := True;
    // return list of com ports - could be used to fill the list box?
    // Label1.caption := GetSerialPortNames;

    // ser.Device - return device name of device currently selected
    // Ser.InstanceActive - check to see if connected (1=connected)
    if Ser.InstanceActive then
    begin
      CPStatusStr := 'Connected';
      ComPortSet := True;
      if (errorloggingchkbox.Checked = True) then
      begin
        logmessagetofile('Connect: Connected');
      end;
    end
    else
    begin
      CPStatusStr := 'Not connected';
      ComPortSet := False;
      if (errorloggingchkbox.Checked = True) then
      begin
        logmessagetofile('Connect: Not connected');
      end;
    end;
    // Get serial device name and status - display in status bar
    StatusMessage.Text := Ser.Device + ' ' + CPStatusStr;
  end
  else
  begin
    StatusMessage.Text := 'There is no COM Port available';
    if (errorloggingchkbox.Checked = True) then
    begin
      logmessagetofile('Connect: There is no COM Port available');
    end;
  end;
  if (errorloggingchkbox.Checked = True) then
  begin
    logmessagetofile('Connect: end');
  end;
end;


begin


end.
