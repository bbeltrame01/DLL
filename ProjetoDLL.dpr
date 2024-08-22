library ProjetoDLL;

uses
  System.SysUtils,
  System.Classes;

{$R *.res}

function NumeroPrimo(Value: String): boolean; stdcall;
var
  LNumero,LCount: Integer;
  i: Integer;
begin
  LNumero := StrToIntDef(Value, 0);
  LCount  := 0;
  for i := 1 to LNumero do
    begin
      if (LNumero mod i) = 0 then
        Inc(LCount);
    end;

  Result := (LCount = 2);
end;

exports
  NumeroPrimo;

end.
