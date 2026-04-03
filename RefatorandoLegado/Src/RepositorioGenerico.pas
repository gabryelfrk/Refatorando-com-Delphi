unit RepositorioGenerico;

interface

uses
  FireDAC.Comp.Client,
  System.Rtti,
  Principal,
  DM;

type
  TRepository<T: class, constructor> = class
  private
    FConn: TFDConnection;
  public
    constructor Create(AConn: TFDConnection);
    procedure Insert(AEntity: T);
  end;

implementation

uses
  System.SysUtils;

{ TRepository<T> }

constructor TRepository<T>.Create(AConn: TFDConnection);
begin

end;

procedure TRepository<T>.Insert(AEntity: T);
var
  ctx: TRttiContext;
  t: TRttiType;
  prop: TRttiProperty;
  sql, fields, params: string;
begin
  ctx := TRttiContext.Create;
  t   := ctx.GetType(AEntity.ClassType);

  for prop in t.GetProperties do
  begin
    if prop.IsReadable then
    begin
      fields := fields + prop.Name + ',';
      params := params + ':' + prop.Name + ',';
    end;
  end;

  Delete(fields, Length(fields), 1);
  Delete(params, Length(params), 1);

  sql := Format('INSERT INTO %s (%s) VALUES (%s)', ['CLIENTE', fields, params]);

  try
    DMExemplo.Query.SQL.Text := sql;

    for prop in t.GetProperties do                    // Garanta que AEntity seja um objeto (class), não interface nem record.
      DMExemplo.Query.ParamByName(prop.Name).Value := prop.GetValue(TObject(AEntity)).AsVariant; // OLD: prop.GetValue(AEntity).AsVariant;

    DMExemplo.Query.ExecSQL;
  finally
  end;
end;

end.
