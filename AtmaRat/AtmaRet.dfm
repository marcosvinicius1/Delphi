object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'AtmaRat'
  ClientHeight = 635
  ClientWidth = 963
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 24
    Top = 5
    Width = 94
    Height = 13
    Caption = 'Intervalo de Busca:'
  end
  object Label8: TLabel
    Left = 345
    Top = 6
    Width = 56
    Height = 13
    Caption = 'Local Banco'
  end
  object Label9: TLabel
    Left = 864
    Top = 8
    Width = 82
    Height = 13
    Caption = 'Relatar Problema'
  end
  object Label10: TLabel
    Left = 766
    Top = 8
    Width = 66
    Height = 13
    Caption = 'Baixar Vers'#227'o'
  end
  object Dtinicial: TDateTimePicker
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    Date = 41521.783457777770000000
    Time = 41521.783457777770000000
    TabOrder = 0
  end
  object Dtfinal: TDateTimePicker
    Left = 176
    Top = 24
    Width = 121
    Height = 21
    Date = 41521.783648368060000000
    Time = 41521.783648368060000000
    TabOrder = 1
  end
  object Edlocalbanco: TEdit
    Left = 345
    Top = 24
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object Btsalvarlbanco: TButton
    Left = 685
    Top = 22
    Width = 42
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = BtsalvarlbancoClick
  end
  object Btlocal: TButton
    Left = 657
    Top = 22
    Width = 22
    Height = 25
    Caption = '...'
    TabOrder = 4
    OnClick = BtlocalClick
  end
  object Button2: TButton
    Left = 915
    Top = 27
    Width = 27
    Height = 20
    Caption = '...'
    TabOrder = 5
    OnClick = Button2Click
  end
  object PageControl2: TPageControl
    Left = 24
    Top = 51
    Width = 922
    Height = 574
    ActivePage = TabSheet3
    TabOrder = 6
    object TabSheet3: TTabSheet
      Caption = 'VERIFICA VENDA/470/ALIQ.DIVERGENTE'
      ExplicitLeft = 0
      object Label15: TLabel
        Left = 3
        Top = 13
        Width = 160
        Height = 13
        Caption = 'DIAS PARA SEREM IMPORTADOS'
      end
      object Label11: TLabel
        Left = 402
        Top = 13
        Width = 3
        Height = 13
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 627
        Top = 13
        Width = 3
        Height = 13
      end
      object LbtTotalizadoresDivergentes: TLabel
        Left = 187
        Top = 295
        Width = 3
        Height = 13
      end
      object Label16: TLabel
        Left = 3
        Top = 295
        Width = 154
        Height = 13
        Caption = 'TOTALIZADORES DIVERGENTES'
      end
      object DBGridVendas: TDBGrid
        Left = 3
        Top = 32
        Width = 365
        Height = 193
        DataSource = dm.DataSourceVendasSemR02
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NS20'
            Title.Caption = 'SERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAMOV'
            Title.Caption = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KONT'
            Title.Caption = 'REGISTRO'
            Width = 64
            Visible = True
          end>
      end
      object Button7: TButton
        Left = 3
        Top = 240
        Width = 142
        Height = 25
        Caption = 'REGISTRO SEM VENDAS'
        TabOrder = 1
        OnClick = Button7Click
      end
      object PageControl1: TPageControl
        Left = 402
        Top = 32
        Width = 415
        Height = 192
        ActivePage = TabSheet1
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = 'R04 SEM R05'
          object DBGcancelado: TDBGrid
            Left = 0
            Top = 0
            Width = 407
            Height = 164
            Align = alClient
            DataSource = dm.DataSourceVerificaR04
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NRFAB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMISSAOD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VTLIQ'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_R04'
                Visible = True
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'TOTALIZADO'
          ImageIndex = 1
          object SGtotalcancel: TStringGrid
            Left = 0
            Top = 0
            Width = 407
            Height = 164
            Align = alClient
            ColCount = 3
            RowCount = 1
            FixedRows = 0
            TabOrder = 0
            RowHeights = (
              24)
          end
        end
      end
      object Button1: TButton
        Left = 402
        Top = 240
        Width = 115
        Height = 25
        Caption = 'MARCA CANCELADO'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Btajuste: TButton
        Left = 7
        Top = 506
        Width = 75
        Height = 25
        Caption = 'AJUSTE'
        TabOrder = 4
        OnClick = BtajusteClick
      end
      object DBGrid3: TDBGrid
        Left = 3
        Top = 325
        Width = 407
        Height = 175
        DataSource = dm.DataSourceAliquotasDiferente
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRFAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_TOT'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALIQ'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'VALOR DOS TOTALIZADORES DIVERGENTE'
      ImageIndex = 1
      object Label5: TLabel
        Left = 521
        Top = 29
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 481
        Top = 29
        Width = 19
        Height = 13
        Caption = 'R05'
      end
      object Label2: TLabel
        Left = 15
        Top = 29
        Width = 19
        Height = 13
        Caption = 'R03'
      end
      object Label4: TLabel
        Left = 60
        Top = 29
        Width = 3
        Height = 13
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 15
        Top = 239
        Width = 145
        Height = 13
        Caption = 'DIFERENCA ENTRE R03 E R05'
      end
      object Label7: TLabel
        Left = 178
        Top = 239
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object qtder05: TLabel
        Left = 379
        Top = 239
        Width = 3
        Height = 13
      end
      object DBGR05: TDBGrid
        Left = 481
        Top = 48
        Width = 417
        Height = 182
        DataSource = dm.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRFAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPARCIAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALIQ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAST'
            Title.Caption = 'TOTAL'
            Width = 64
            Visible = True
          end>
      end
      object DBGR03: TDBGrid
        Left = 15
        Top = 48
        Width = 385
        Height = 182
        DataSource = dm.DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRFAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPARCIAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUM'
            Title.Caption = 'TOTAL'
            Width = 64
            Visible = True
          end>
      end
      object SGresultador05: TStringGrid
        Left = 15
        Top = 258
        Width = 394
        Height = 223
        Ctl3D = True
        RowCount = 1
        FixedRows = 0
        ParentCtl3D = False
        TabOrder = 2
        RowHeights = (
          24)
      end
      object Btcalcdiferenca: TButton
        Left = 15
        Top = 494
        Width = 122
        Height = 25
        Caption = 'CALCULAR DIFEREN'#199'A'
        TabOrder = 3
        OnClick = BtcalcdiferencaClick
      end
      object Btratiar: TButton
        Left = 334
        Top = 494
        Width = 75
        Height = 25
        Caption = 'RATIAR'
        TabOrder = 4
        OnClick = BtratiarClick
      end
      object Btpesquisa: TButton
        Left = 13
        Top = 3
        Width = 77
        Height = 25
        Caption = 'PESQUISA'
        TabOrder = 5
        OnClick = BtpesquisaClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'AJUSTES ALIQUOTAS/490'
      ImageIndex = 2
      object Label13: TLabel
        Left = 600
        Top = 22
        Width = 135
        Height = 13
        Caption = 'ALIQUOTAS CADASTRADAS'
      end
      object Label14: TLabel
        Left = 11
        Top = 24
        Width = 217
        Height = 13
        Caption = 'BASE ICMS DIFERENTE DO VALOR DE VENDA'
      end
      object DBGrid1: TDBGrid
        Left = 600
        Top = 41
        Width = 245
        Height = 161
        DataSource = dm.DataSourcealiquota
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ALIQ'
            Title.Caption = 'TOTALIZADOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICM_EF'
            Title.Caption = 'ALIQUOTA'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST'
            Visible = True
          end>
      end
      object Button3: TButton
        Left = 600
        Top = 217
        Width = 121
        Height = 25
        Caption = 'ALIQUOTA/CFOP'
        TabOrder = 1
        OnClick = Button3Click
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 43
        Width = 542
        Height = 159
        DataSource = dm.DataSourceVerificaIcms
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NRFAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALIQ'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPARCIAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOMAITEM'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOMABICM'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFERENCA'
            Width = 64
            Visible = True
          end>
      end
      object Button5: TButton
        Left = 478
        Top = 217
        Width = 75
        Height = 25
        Caption = 'RATIAR'
        TabOrder = 3
      end
      object Button4: TButton
        Left = 0
        Top = 217
        Width = 126
        Height = 25
        Caption = 'CALCULAR DIFERENCA'
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button6: TButton
        Left = 770
        Top = 217
        Width = 75
        Height = 25
        Caption = 'CFOP'
        TabOrder = 5
        OnClick = Button6Click
      end
    end
  end
  object Button8: TButton
    Left = 766
    Top = 27
    Width = 75
    Height = 23
    Caption = 'Download'
    TabOrder = 7
    OnClick = Button8Click
  end
  object OpenDialogLocalBanco: TOpenDialog
    Left = 568
    Top = 16
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 664
    Top = 456
  end
end
