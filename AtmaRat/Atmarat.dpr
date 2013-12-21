program Atmarat;

uses
  Vcl.Forms,
  AtmaRet in 'AtmaRet.pas' {Form1},
  Udm in 'Udm.pas' {dm: TDataModule},
  Utread in 'Utread.pas',
  Utreadr05 in 'Utreadr05.pas',
  Utreaddiferenca in 'Utreaddiferenca.pas',
  Vcl.Themes,
  Vcl.Styles,
  Umenssagem in 'Umenssagem.pas' {TFormmenssagem},
  Utreadrateio in 'Utreadrateio.pas',
  UtreadMarcaCancelado in 'UtreadMarcaCancelado.pas',
  Uemail in 'Uemail.pas' {Form2},
  Uthreadaliquota in 'Uthreadaliquota.pas',
  UthreadIcmsDVenda in 'UthreadIcmsDVenda.pas',
  UthreadVendaCancelado in 'UthreadVendaCancelado.pas',
  OKCANCL2 in 'd:\embarcadero\rad studio\9.0\ObjRepos\EN\DelphiWin32\OKCANCL2.PAS' {OKRightDlg},
  UmudancasVersao in 'UmudancasVersao.pas' {FormVersao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.Run;

end.
