program project1;

{$mode objfpc}{$H+}


uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  tachartlazaruspkg,
  Unit1,
  synaser,
  Unit2,
  Unit3,
  Unit4;

{$R *.res}

begin
  Application.Title := 'myDewControllerPro3L';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TmyDewControllerfrm, myDewControllerfrm);
  Application.CreateForm(TAboutfrm, Aboutfrm);
  Application.CreateForm(TChartfrm, Chartfrm);
  Application.Run;

end.
