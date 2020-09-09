unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    AddBatton: TButton;
    Bevel1: TBevel;
    ExitButton: TButton;
    CaptionLabel: TLabel;
    RazrabButton: TButton;
    YearButton: TButton;
    InfoButton: TButton;
    MemoryButton: TButton;
    DeleteButton: TButton;
    procedure AddBattonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure InfoButtonClick(Sender: TObject);
    procedure RazrabButtonClick(Sender: TObject);
    procedure MemoryButtonClick(Sender: TObject);
    procedure YearButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type zap = record
       name : string[22];
       lastname : string[22];
       year : string[22];
       memory : string[22];
  end;

var
  MainForm: TMainForm;
  f:file of zap;
  z:zap;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}
procedure TMainForm.AddBattonClick(Sender: TObject);
    var size:integer;
    begin
        AssignFile(f,'programms.dat');
        {$I-} Reset(F); {$I+}
        if ioresult=0 then
        begin
            size:= FileSize(f);
            seek(f,size);
        end
        else rewrite(f);
        Form2.Show;
        Form2.edit1.setfocus;
    end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
close;
end;

procedure TMainForm.DeleteButtonClick(Sender: TObject);
begin
        AssignFile(f,'programms.dat');
        reset(f);
        form3.show;
        form3.edit1.setfocus;
end;

procedure TMainForm.InfoButtonClick(Sender: TObject);
begin
        AssignFile(f,'programms.dat');
        reset(f);
        form4.show;
        form4.edit1.setfocus;
end;

procedure TMainForm.RazrabButtonClick(Sender: TObject);
begin
        AssignFile(f,'programms.dat');
        reset(f);
        form5.show;
        form5.edit1.setfocus;
end;

procedure TMainForm.MemoryButtonClick(Sender: TObject);
begin
        AssignFile(f,'programms.dat');
        reset(f);
        form6.show;
        form6.edit1.setfocus;
end;

procedure TMainForm.YearButtonClick(Sender: TObject);
begin
        AssignFile(f,'programms.dat');
        reset(f);
        form7.show;
end;

end.
