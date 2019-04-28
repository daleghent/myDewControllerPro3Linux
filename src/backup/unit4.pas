unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TAIntervalSources, TASeries, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

procedure addtemptochart(ambient, dewpoint: extended);

type

  { TChartfrm }

  TChartfrm = class(TForm)
    Chart1: TChart;
    DateTimeIntervalChartSource1: TDateTimeIntervalChartSource;
    Hidebtn: TButton;
    procedure FormCreate(Sender: TObject);
    procedure HidebtnClick(Sender: TObject);
  private

  public

  end;

var
  Chartfrm: TChartfrm;
  AmbientSeries: TLineSeries;
  DewPointSeries: TLineSeries;
  ch1Series: TLineSeries;
  ch2Series: TLineSeries;
  ch3Series: TLineSeries;
  plotcount: integer;

implementation

{$R *.lfm}

{ TChartfrm }

procedure TChartfrm.HidebtnClick(Sender: TObject);
begin
  Hide;
end;

procedure TChartfrm.FormCreate(Sender: TObject);
begin
  AmbientSeries := TLineSeries.Create(Chart1);
  DewPointSeries := TLineSeries.Create(Chart1);
  Chart1.AddSeries(AmbientSeries);
  Chart1.AddSeries(DewPointSeries);
  //AmbientSeries.Legend.Title := 'Ambient';
  AmbientSeries.Legend.Visible := True;
  AmbientSeries.ShowPoints := True;
  //DewPointSeries.Legend.Title := 'Dewpoint';
  DewPointSeries.Legend.Visible := True;
  DewPointSeries.ShowPoints := True;
  plotcount := plotcount + 1;
end;

procedure addtemptochart(ambient, dewpoint: extended);
begin
  AmbientSeries.AddXY(TIME, ambient);
  DewPointSeries.ADDY(dewpoint);
  plotcount := plotcount + 1;
  if (plotcount > 10) then
    begin
    AmbientSeries.Delete(0);
    DewPointSeries.Delete(0);
    end;
    end;
end;

end.
