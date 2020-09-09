unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, TeEngine, Series, TeeProcs, Chart;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    ExitButton: TButton;
    TChart: TChart;
    Series1: TBarSeries;
    StartButton: TButton;
    procedure ExitButtonClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}
Uses Unit1;

procedure TForm7.ExitButtonClick(Sender: TObject);
begin
  Series1.clear;
  TChart.Visible := false;
  close;
end;

procedure TForm7.StartButtonClick(Sender: TObject);
var arr:array[0..201] of record lastname:string[22];number:integer; end;
    count, i:integer;
    str:string[10];
    z : zap;
    n:integer;
begin
    Series1.Clear;
    count := 0;
    while not eof(f) do
    begin
        read(f,z);
        i := 0;
        if z.name <> 'Удалено' then
        begin
            while i < count do
            begin
                if arr[i].lastname = z.lastname then
                begin
                    arr[i].number := arr[i].number + 1;
                    break;
                end;
                i := i + 1;
            end;
            if i = count then
            begin
                arr[i].lastname := z.lastname;
                arr[i].number := 1;
                count := count + 1;
            end;
        end;
    end;
    closefile(f);
    i := 0;
    for i := 0 to (count-1) do
    begin
    Series1.Add(arr[i].number,arr[i].lastname);
    end;
    TChart.Visible := true;
end;
end.
