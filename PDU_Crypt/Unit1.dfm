object Form1: TForm1
  Left = 228
  Top = 127
  Width = 698
  Height = 456
  Caption = 'PDU Crypt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    690
    428)
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 693
    Height = 209
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'unit Unit1;'
      ''
      'interface'
      ''
      'uses'
      
        '  Windows, Messages, SysUtils, Variants, Classes, Graphics, Cont' +
        'rols, Forms,'
      '  Dialogs, StdCtrls;'
      ''
      'type'
      '  TForm1 = class(TForm)'
      '    Memo1: TMemo;'
      '    Memo2: TMemo;'
      '    Memo3: TMemo;'
      '    Button1: TButton;'
      '    Button2: TButton;'
      '    procedure Button1Click(Sender: TObject);'
      '    procedure Button2Click(Sender: TObject);'
      '  private'
      '    { Declarations privees }'
      '  public'
      '    { Declarations publiques }'
      '  end;'
      ''
      'var'
      '  Form1: TForm1;'
      ''
      'implementation'
      'uses TdjPDUCrypt;'
      ''
      '{$R *.dfm}'
      ''
      'procedure TForm1.Button1Click(Sender: TObject);'
      'begin'
      '  Memo3.Text:= EncodePDU7bits(Memo1.Text);'
      'end;'
      ''
      'procedure TForm1.Button2Click(Sender: TObject);'
      'begin'
      '  Memo2.Text:= DecodePDU7bits(Memo3.Text);'
      'end;'
      ''
      'end.')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 0
    Top = 360
    Width = 693
    Height = 142
    Anchors = [akLeft, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Memo3: TMemo
    Left = 0
    Top = 207
    Width = 693
    Height = 153
    Anchors = [akLeft, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button1: TButton
    Left = 568
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Encode'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 568
    Top = 216
    Width = 97
    Height = 25
    Caption = 'Decode'
    TabOrder = 4
    OnClick = Button2Click
  end
end
