unit Unit_requerimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_requerimento = class(TForm)
    TFDTable_requerimento: TFDTable;
    TFDTable_requerimentocodigo: TFDAutoIncField;
    TFDTable_requerimentodata_requerimento: TWideMemoField;
    TFDTable_requerimentoquantidade: TIntegerField;
    TFDTable_requerimentorequerente_responsavel_codigo: TIntegerField;
    TFDTable_requerimentorequerente_nao_responsavel: TWideMemoField;
    TFDTable_requerimentoitem_codigo: TIntegerField;
    TFDTable_requerimentolocal_retirada_codigo: TIntegerField;
    TFDTable_requerimentosetor_codigo: TIntegerField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    FDQuery1: TFDQuery;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_requerimento: TForm_requerimento;

implementation

{$R *.dfm}

procedure TForm_requerimento.Button1Click(Sender: TObject);
begin
  with FDQuery1.SQL do begin
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('INSERT INTO TB_requerimento VALUES (null, ''2024-11-07'', 3, 8,' +
            'null, 1, 1, 1);');
  end;
  FDQuery1.Open;
  FDQuery1.NextRecordSet;
end;

procedure TForm_requerimento.ButtonAdicionarClick(Sender: TObject);
begin
  TFDTable_requerimento.Append;
end;

procedure TForm_requerimento.ButtonExcluirClick(Sender: TObject);
begin
  TFDTable_requerimento.Delete;
end;

end.
