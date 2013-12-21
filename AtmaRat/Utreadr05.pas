unit Utreadr05;

interface

uses
  System.Classes;

type
  Threadr05 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure AtualizaCaption;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

  Synchronize(UpdateCaption);

  and UpdateCaption could look like,

  procedure threadr05.UpdateCaption;
  begin
  Form1.Caption := 'Updated in a thread';
  end;

  or

  Synchronize(
  procedure
  begin
  Form1.Caption := 'Updated in thread via an anonymous method'
  end
  )
  );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses Udm, AtmaRet;

{ threadr05 }

procedure Threadr05.AtualizaCaption;
begin
  // Form1.menssagemr05;
  Form1.Label5.Caption := 'Pesquisa Concluida';
  // Form1.Label5.Caption := 'Pesquisa Concluida';
end;

procedure Threadr05.Execute;
begin
  // dm.ClientDataSet2.Open;
  { Place thread code here }
  Form1.Resultador05;
  Synchronize(AtualizaCaption);

end;

end.
