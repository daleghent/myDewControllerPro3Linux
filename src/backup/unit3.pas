unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAIntervalSources, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

procedure addtemptochart(temp: extended);

type

  { TGraphfrm }

  TGraphfrm = class(TForm)
    Chart1: TChart;
    DateTimeIntervalChartSource1: TDateTimeIntervalChartSource;
    hidebtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure hidebtnClick(Sender: TObject);
  private

  public

  end;

var
  Graphfrm: TGraphfrm;
  TempSeries: TLineSeries;
  plotcount: integer;

implementation

{$R *.lfm}

{ TGraphfrm }

procedure TGraphfrm.hidebtnClick(Sender: TObject);
begin
  Hide;
end;

procedure TGraphfrm.FormCreate(Sender: TObject);
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

