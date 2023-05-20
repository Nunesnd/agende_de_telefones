program tela_principal_agenda;

uses
  Vcl.Forms,
  tela_principal in '..\004_-_conexao\tela_principal.pas' {Form1},
  conect in 'conect.pas' {DataModel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModel, DataModel);
  Application.Run;
end.
