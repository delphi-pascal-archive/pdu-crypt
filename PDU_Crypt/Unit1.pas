unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

uses TdjPDUCrypt;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo3.Text:= EncodePDU7bits(Memo1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo2.Text:= DecodePDU7bits(Memo3.Text);
end;

end.
 