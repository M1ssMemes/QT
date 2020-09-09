unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    FindButton: TButton;
    ExitButton: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
Uses Unit1;

procedure TForm4.ExitButtonClick(Sender: TObject);
begin
                Edit2.clear;
                Edit3.clear;
                Edit4.clear;
                Edit5.clear;
                Bevel2.Visible := false;
                Label3.Visible := false;
                Label4.Visible := false;
                Label5.Visible := false;
                Label6.Visible := false;
                Label7.Visible := false;
                Edit2.Visible := false;
                Edit3.Visible := false;
                Edit4.Visible := false;
                Edit5.Visible := false;
                closefile(f);
                close;
end;

procedure TForm4.FindButtonClick(Sender: TObject);
var str : string[22];
    error,c : integer;
begin
        c:=1;
        str:=edit1.text;
        while not eof(f) do
        begin
            read(f,z);
            if str=z.name then
            begin
                c:=0;
                Edit2.text:=z.name;
                Edit3.text:=z.lastname;
                Edit4.text:=z.year;
                Edit5.text:=z.memory;
                Bevel2.Visible := true;
                Label3.Visible := true;
                Label4.Visible := true;
                Label5.Visible := true;
                Label6.Visible := true;
                Label7.Visible := true;
                Edit2.Visible := true;
                Edit3.Visible := true;
                Edit4.Visible := true;
                Edit5.Visible := true;
                break;
            end;
        end;
        if c<>0 then
        begin
         error := messageDlg('Нет данных!',mtinformation,[mbYes],0);
         Edit1.Clear;
         Edit1.SetFocus;
        end;
        reset(f);
    end;


end.
