object FmFuzzy: TFmFuzzy
  Left = 0
  Top = 0
  Caption = 'Consumo de sorvete'
  ClientHeight = 529
  ClientWidth = 974
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTemp: TLabel
    Left = 730
    Top = 16
    Width = 118
    Height = 20
    Caption = 'Temperatura = 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDia: TLabel
    Left = 730
    Top = 127
    Width = 116
    Height = 21
    Caption = 'Dia = Segunda '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object chTemperatura: TChart
    Left = 22
    Top = 8
    Width = 379
    Height = 241
    Legend.Alignment = laBottom
    Legend.FontSeriesColor = True
    Legend.Frame.Visible = False
    Legend.Shadow.Visible = False
    Title.Color = clRed
    Title.Font.Color = clRed
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Temperatura ('#186' C)')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Increment = 5.000000000000000000
    BottomAxis.Maximum = 40.000000000000000000
    BottomAxis.Minimum = 10.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.AxisValuesFormat = '#,##0.00###'
    LeftAxis.LabelsAlign = alOpposite
    LeftAxis.Maximum = 1.000000000000000000
    LeftAxis.MaximumOffset = 5
    LeftAxis.MinimumOffset = 5
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    RightAxis.Increment = 1.000000000000000000
    RightAxis.Maximum = 10.000000000000000000
    TopAxis.Automatic = False
    TopAxis.AutomaticMaximum = False
    View3D = False
    OnAfterDraw = chTemperaturaAfterDraw
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Legend.Text = 'Frio'
      LegendTitle = 'Frio'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Legend.Text = 'Agradavel'
      LegendTitle = 'Agradavel'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Legend.Text = 'Quente'
      LegendTitle = 'Quente'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 730
    Top = 255
    Width = 222
    Height = 233
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 56
      Height = 21
      Caption = 'Gorgeta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 222
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = 'Bussiness inteligence'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 162
    end
  end
  object chDiaSemana: TChart
    Left = 407
    Top = 8
    Width = 299
    Height = 241
    Legend.Alignment = laBottom
    Legend.FontSeriesColor = True
    Legend.Frame.Visible = False
    Legend.Shadow.Visible = False
    Title.Color = clBlack
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Dia')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Increment = 1.000000000000000000
    BottomAxis.Maximum = 7.000000000000000000
    BottomAxis.Minimum = 1.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    View3D = False
    OnAfterDraw = chDiaSemanaAfterDraw
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TLineSeries
      Title = 'Rancid'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Title = 'Delicious'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object chConsumo: TChart
    Left = 407
    Top = 271
    Width = 299
    Height = 250
    Legend.Alignment = laBottom
    Legend.CheckBoxesStyle = cbsRadio
    Legend.DividingLines.Width = 0
    Legend.FontSeriesColor = True
    Legend.Frame.Visible = False
    Legend.LegendStyle = lsSeries
    Legend.Shadow.Visible = False
    Legend.Symbol.Pen.Visible = False
    Legend.Symbol.Shadow.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Consumo de sorvete (kg)')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Maximum = 5.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    Shadow.Color = 16053492
    Shadow.Transparency = 0
    View3D = False
    OnAfterDraw = chConsumoAfterDraw
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      18
      15
      18)
    ColorPaletteIndex = 13
    object Series6: TLineSeries
      Legend.Text = 'Baixo'
      LegendTitle = 'Baixo'
      Title = 'Baixo'
      Brush.BackColor = clDefault
      Dark3D = False
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TSmoothingFunction
        CalcByValue = False
        Period = 1.000000000000000000
        Factor = 8
      end
    end
    object Series7: TLineSeries
      Legend.Text = 'M'#233'dio'
      LegendTitle = 'M'#233'dio'
      Title = 'Medio'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TSmoothingFunction
        CalcByValue = False
        Period = 1.000000000000000000
        Factor = 8
      end
    end
    object Series8: TLineSeries
      Legend.Text = 'Alto'
      LegendTitle = 'Alto'
      Title = 'Alto'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TSmoothingFunction
        CalcByValue = False
        Period = 1.000000000000000000
        Factor = 8
      end
    end
  end
  object tbTemperatura: TTrackBar
    Left = 730
    Top = 56
    Width = 222
    Height = 41
    Max = 40
    Min = 10
    Position = 10
    TabOrder = 4
    TickMarks = tmTopLeft
    OnChange = tbTemperaturaChange
  end
  object tbFood: TTrackBar
    Left = 730
    Top = 168
    Width = 222
    Height = 33
    Max = 7
    Min = 1
    Position = 1
    TabOrder = 5
    TickMarks = tmTopLeft
    OnChange = tbFoodChange
  end
  object chCentroide: TChart
    Left = 22
    Top = 271
    Width = 379
    Height = 250
    Legend.Alignment = laBottom
    Legend.FontSeriesColor = True
    Legend.Frame.Visible = False
    Legend.LegendStyle = lsSeries
    Legend.Shadow.Visible = False
    Title.Font.Color = 11534371
    Title.Font.Height = -13
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'Centroide')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.Maximum = 30.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.000000000000000000
    View3D = False
    OnAfterDraw = chCentroideAfterDraw
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 6
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object LineSeries3: TLineSeries
      Title = 'Centroid'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
