unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    Bevel1: TBevel;
    FindButton: TButton;
    ExitButton: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Label4: TLabel;
    Edit2: TEdit;
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
  Form6: TForm6;

implementation

{$R *.dfm}
Uses Unit1;

procedure TForm6.ExitButtonClick(Sender: TObject);
begin
closefile(f);
close;
end;

procedure TForm6.FindButtonClick(Sender: TObject);
var c, check, error : integer;
    str, ystr: string[22];
begin
      Memo1.Lines.Clear;
      c := 1;
      str := Edit1.text;
      ystr := Edit2.text;
      try
        check := strtoint(str);
        check := strtoint(ystr);
        case RadioGroup1.ItemIndex of
        0: begin
              while not eof(f) do
                begin
                    read(f,z);
                    if ((strtoint(z.memory) > strtoint(str)) and (strtoint(z.year) = strtoint(ystr))) then
                      begin
                        c := 0;
                        Label5.Visible := true;
                        Memo1.Visible := true;
                        Memo1.Lines.Add(z.name);
                      end;
                end;
                reset(f);
           end;
        1: begin
              while not eof(f) do
                begin
                    read(f,z);
                    if ((strtoint(z.memory) < strtoint(str)) and (strtoint(z.year) = strtoint(ystr))) then
                      begin
                        c := 0;
                        Label5.Visible := true;
                        Memo1.Visible := true;
                        Memo1.Lines.Add(z.name);
                      end;
                end;
                reset(f);
           end;
        end;
        if (c <> 0) then
          begin
            error := messageDlg('Данные не найдены',mtinformation,[mbYes],0);
            Edit1.Clear;
            Edit2.Clear;
          end;
        reset(f);
        except
        error := messageDlg('Объем памяти и год должны быть числом!',mtinformation,[mbYes],0);
        Edit1.clear;
        Edit2.clear;
        end;

end;

end.
