unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    DeleteButton: TButton;
    ExitButton: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
Uses Unit1;

procedure TForm3.ExitButtonClick(Sender: TObject);
begin
close;
end;

procedure TForm3.DeleteButtonClick(Sender: TObject);
    var error,c:integer;
        str:string[22];
        m:string[22];
    begin
        c:=1;
        str:=edit1.text;
        m:='Удалено';
        while not eof(f) do
        begin
            read(f,z);
            if str=z.name then
            begin
                c:=0;
                z.name := m;
                z.lastname := m;
                z.year := '0';
                z.memory := '0';
                Seek(f,FilePos(f)-1);
                write(f,z);
                error := messageDlg('Удалено!',mtinformation,[mbYes],0);
                Edit1.clear;
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
