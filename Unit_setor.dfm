object Form_setor: TForm_setor
  Left = 0
  Top = 0
  Caption = 'Form_setor'
  ClientHeight = 556
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object Label2: TLabel
    Left = 264
    Top = 184
    Width = 31
    Height = 15
    Caption = 'nome'
    FocusControl = DBMemo1
  end
  object Label3: TLabel
    Left = 264
    Top = 296
    Width = 104
    Height = 15
    Caption = 'responsavel_codigo'
    FocusControl = DBEdit2
  end
  object ButtonAdicionar: TButton
    Left = 182
    Top = 500
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = ButtonAdicionarClick
  end
  object ButtonExcluir: TButton
    Left = 263
    Top = 500
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
    OnClick = ButtonExcluirClick
  end
  object DBMemo1: TDBMemo
    Left = 264
    Top = 200
    Width = 185
    Height = 89
    DataField = 'nome'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 264
    Top = 312
    Width = 154
    Height = 23
    DataField = 'responsavel_codigo'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 352
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel_codigo'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 136
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 456
    Top = 293
    Width = 145
    Height = 23
    TabOrder = 6
    Text = 'ComboBox1'
  end
  object DataSource1: TDataSource
    DataSet = TFDTable_setor
    Left = 552
    Top = 16
  end
  object TFDTable_setor: TFDTable
    Active = True
    IndexFieldNames = 'codigo'
    Connection = Form1.FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'TB_setor'
    Left = 536
    Top = 80
    object TFDTable_setorcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object TFDTable_setornome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      BlobType = ftWideMemo
    end
    object TFDTable_setorresponsavel_codigo: TIntegerField
      FieldName = 'responsavel_codigo'
      Origin = 'responsavel_codigo'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = Form1.FDConnection1
    SQL.Strings = (
      'SELECT * FROM TB_setor')
    Left = 536
    Top = 160
  end
end
