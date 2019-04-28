unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

procedure addtemptochart(temp: extended);

type

  { Tgraphtemp }

  Tgraphtemp = class(TForm)
    hidebtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure hidebtnClick(Sender: TObject);
  private

  public

  end;

var
  graphtemp: Tgraphtemp;
    Graphftm: TGraphftm;
  TempSeries: TLineSeries;
  plotcount: integer;

implementation

{$R *.lfm}

{ Tgraphtemp }

procedure Tgraphtemp.hidebtnClick(Sender: TObject);
begin
  Hide;
end;

procedure Tgraphtemp.FormCreate(Sender: TObject);
begin
    TempSeries := TLineSeries.Create(Chart1);
  Chart1.AddSeries(TempSeries);
  //TempSeries.Legend.Title := 'Temp';
  TempSeries.Legend.Visible := True;
  TempSeries.ShowPoints := True;
  plotcount := plotcount + 1;
end;

procedure addtemptochart(temp: extended);
begin
  TempSeries.AddXY(TIME, temp);
  plotcount := plotcount + 1;
  if (plotcount > 10) then
    TempSeries.Delete(0);
end;

end.

