object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'E-mail'
  ClientHeight = 301
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 49
    Top = 27
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object Label2: TLabel
    Left = 51
    Top = 67
    Width = 39
    Height = 13
    Caption = 'Assunto'
  end
  object Label3: TLabel
    Left = 47
    Top = 133
    Width = 102
    Height = 13
    Caption = 'Problema Encontrado'
  end
  object Label4: TLabel
    Left = 14
    Top = 107
    Width = 76
    Height = 13
    Caption = 'E-mail Resposta'
  end
  object Button1: TButton
    Left = 47
    Top = 271
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edempresa: TEdit
    Left = 96
    Top = 24
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object Edassunto: TEdit
    Left = 96
    Top = 64
    Width = 281
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 49
    Top = 152
    Width = 326
    Height = 113
    TabOrder = 3
  end
  object Edemail: TEdit
    Left = 96
    Top = 104
    Width = 281
    Height = 21
    TabOrder = 4
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 230
    Top = 208
  end
  object IDSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 150
    Top = 208
  end
end
