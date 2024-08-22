object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'N'#250'meros Primos'
  ClientHeight = 122
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 23
  object lblEntrada: TLabel
    Left = 32
    Top = 24
    Width = 59
    Height = 23
    Caption = 'Entrada'
  end
  object lblResultado: TLabel
    Left = 32
    Top = 85
    Width = 5
    Height = 23
  end
  object btnSair: TButton
    Left = 232
    Top = 64
    Width = 103
    Height = 50
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnSairClick
  end
  object btnValidar: TButton
    Left = 232
    Top = 8
    Width = 103
    Height = 50
    Caption = 'Validar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnValidarClick
  end
  object edtEntrada: TEdit
    Left = 32
    Top = 48
    Width = 121
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxLength = 10
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
  end
end
