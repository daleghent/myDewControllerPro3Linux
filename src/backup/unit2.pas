unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TAboutfrm }

  TAboutfrm = class(TForm)
    CloseBtn: TButton;
    StaticText1: TStaticText;
    procedure CloseBtnClick(Sender: TObject);
  private

  public

  end;

var
  Aboutfrm: TAboutfrm;

implementation

{$R *.lfm}

{ TAboutfrm }

procedure TAboutfrm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.

