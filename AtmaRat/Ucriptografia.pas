unit Ucriptografia;

interface
uses
Windows, SysUtils, Classes, Forms;
type
criptografia=class(TForm);


function AsciiToInt(Caracter: Char): Integer;
Function Criptografa(texto: string; chave: integer): String;
function DesCriptografa(texto: String; chave: integer): String;


implementation

end.
