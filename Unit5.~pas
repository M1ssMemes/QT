unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    FindButton: TButton;
    ExitButton: TButton;
    Memo1: TMemo;
    Label5: TLabel;
    procedure ExitButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
Uses Unit1;

procedure TForm5.ExitButtonClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Label5.Visible := false;
  Memo1.Visible := false;
  closefile(f);
  close;
end;

procedure TForm5.FindButtonClick(Sender: TObject);
var c, check, error : integer;
    str, ystr1, ystr2 : string[22];
  begin
      Memo1.Lines.Clear;
      c := 1;
      str := Edit1.Text;
      ystr1 := Edit2.Text;
      ystr2 := Edit3.Text;
      try
        check := strtoint(ystr1);
        check := strtoint(ystr2);
        while not eof(f) do
        begin
            read(f,z);
            if str=z.lastname then
            begin
              if ((strtoint(ystr1)<=strtoint(z.year)) and (strtoint(ystr2)>=strtoint(z.year))) then
                  begin
                  c := 0;
                  Memo1.Lines.Add(z.name);
                  Label5.Visible := true;
                  Memo1.Visible := true;
                  end;
            end;
        end;
        reset(f);
        if (c <> 0) then
          begin
            error := messageDlg('Данные не найдены',mtinformation,[mbYes],0);
            Edit1.Clear;
            Edit2.Clear;
            Edit3.Clear;
          end;
        reset(f);
      except
        error := messageDlg('Года должны быть числом!',mtinformation,[mbYes],0);
        Edit2.clear;
        Edit3.clear;
        end;

end;

end.
