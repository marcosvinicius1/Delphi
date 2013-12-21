unit Uemail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdMessage, IdBaseComponent, IdAntiFreezeBase, Vcl.IdAntiFreeze,
  Vcl.StdCtrls, Shellapi;

type
  TForm2 = class(TForm)
    Button1: TButton;
    IdMessage1: TIdMessage;
    IDSMTP1: TIdSMTP;
    Edempresa: TEdit;
    Label1: TLabel;
    Edassunto: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Edemail: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EnviaEmail;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  if IDSMTP1.Connected then
  begin
    ShowMessage('Erro ao conectar');
  end
  else
  begin
    ShowMessage('conectado');
  end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (Edempresa.Text <> '') and (Edassunto.Text <> '') and (Edemail.Text <> '')
    and (Memo1.Text <> '') then
  begin
    EnviaEmail;
  end
  else
  begin
    ShowMessage('Todos os Campos São Obrigatorios !!');
  end;

end;

procedure TForm2.EnviaEmail;
begin
  IDSMTP1.Host := 'smtp.atmatech.com.br';
  IDSMTP1.Port := 587;
  IDSMTP1.Username := 'suporte@atmatech.com.br';
  IDSMTP1.Password := 'at36tech';
  IDSMTP1.Connect;
  if IDSMTP1.Connected then
  begin
    IdMessage1.Recipients.EMailAddresses := 'suporte@atmatech.com.br';
    IdMessage1.Subject := Edempresa.Text + ' : ' + Edassunto.Text;
    IdMessage1.Body.Text := Edemail.Text + #13#10 + Memo1.Text;
    IDSMTP1.Send(IdMessage1);
    IDSMTP1.Disconnect;
    ShowMessage('Email Enviado Com Sucesso !!' + #13 +
      'Em Breve Um Dos Nossos Consultores Entrara Em Contato');
    Form2.Close
  end
  else
  begin
    IDSMTP1.Disconnect;
    ShowMessage('Erro ao Enviar Email !!');
  end;
end;

end.
