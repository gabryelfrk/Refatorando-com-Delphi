object DMExemplo: TDMExemplo
  Height = 476
  Width = 532
  PixelsPerInch = 120
  object Conn: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=C:\Users\gabry\OneDrive\'#193'rea de Trabalho\RefatorandoLeg' +
        'ado\Src\Dados\meubanco.db')
    LoginPrompt = False
    Left = 208
    Top = 184
  end
  object Query: TFDQuery
    Connection = Conn
    Left = 336
    Top = 216
  end
end
