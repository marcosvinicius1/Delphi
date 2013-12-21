unit UajusteNrtot;

interface
type
  TajusteNrtot = class(TMethod)
  private
    { Private declarations }
  protected
procedure teste;
  end;
implementation

uses AtmaRet;

procedure TajusteNrtot.teste;
var
teste:AtmaRet.TForm1;
t:String;
begin
t:=teste.Dtinicial.Date;
end;

end.
