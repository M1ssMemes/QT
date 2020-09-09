unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Bevel1: TBevel;
    AddButton: TButton;
    ExitButton: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

Uses Unit1;

{$R *.dfm}



procedure TForm2.ExitButtonClick(Sender: TObject);
begin
        Edit1.clear;
        Edit2.clear;
        Edit3.clear;
        Edit4.clear;
        closefile(f);
        close;
end;

procedure TForm2.AddButtonClick(Sender: TObject);
Var error,check:integer;
begin
       z.name := Edit1.text;
       z.lastname := Edit2.text;
       z.year := Edit3.text ;
       z.memory := Edit4.text;
       try
        check:=strtoint(z.year);
        check:=strtoint(z.memory);
        write(f,z);
        Edit1.clear;
        Edit2.clear;
        Edit3.clear;
        Edit4.clear;
        Edit1.setfocus;
       except
        error := messageDlg('Год и объем памяти должны быть числом!',mtinformation,[mbYes],0);
        Edit3.clear;
        Edit4.clear;
        end;
end;

end.
 