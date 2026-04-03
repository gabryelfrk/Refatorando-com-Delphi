object FrmPrincipal: TFrmPrincipal
  Left = 710
  Top = 491
  Caption = 'Refatorando Legado'
  ClientHeight = 154
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object BtnLegado: TButton
    Left = 72
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Legado'
    TabOrder = 0
    OnClick = BtnLegadoClick
  end
  object BtnRefatorado: TButton
    Left = 168
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Refatorado'
    TabOrder = 1
    OnClick = BtnRefatoradoClick
  end
end
