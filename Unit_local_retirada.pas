unit Unit_local_retirada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_local_retirada = class(TForm)
    TFDTable_local_retirada: TFDTable;
    TFDTable_local_retiradacodigo: TFDAutoIncField;
    TFDTable_local_retiradanome: TWideMemoField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    ButtonAdicionar: TButton;
    ButtonExcluir: TButton;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    Button1: TButton;
    procedure ButtonAdicionarClick(Sender: TObject);
    procedure ButtonExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_local_retirada: TForm_local_retirada;

implementation

{$R *.dfm}

procedure TForm_local_retirada.Button1Click(Sender: TObject);
begin
  with FDQuery1.SQL do begin
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('INSERT INTO TB_local_retirada VALUES (null, ''Nome1'');');
  end;
end;

procedure TForm_local_retirada.ButtonAdicionarClick(Sender: TObject);
begin
  TFDTable_local_retirada.Append;
end;

procedure TForm_local_retirada.ButtonExcluirClick(Sender: TObject);
begin
  TFDTable_local_retirada.Delete;
end;

end.
