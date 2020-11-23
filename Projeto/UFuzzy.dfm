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
    Width = 215
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
    Width = 215
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
      Width = 177
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
      ExplicitLeft = 21
      ExplicitTop = 21
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
      Data = {
        01C800000000000000000000000000000000888D40C01E85EB51B8BE3F59ABD4
        5A2A6F8D40B81E85EB51B8CE3F2B0B91E03E578D4008D7A3703D0AD73FEDD31C
        BC27418D40B81E85EB51B8DE3F19BA5F18CF2D8D40343333333333E33F267241
        201F1E8D400AD7A3703D0AE73F8CB0A9FE01138D40E27A14AE47E1EA3FC52980
        DE610D8D40B71E85EB51B8EE3F4792ACEA280E8D4048E17A14AE47F13F4D13FE
        9735168D40343333333333F33F3E836636DE258D401E85EB51B81EF53F22A41F
        40213D8D400AD7A3703D0AF73F9626A0B8FB5B8D40F7285C8FC2F5F83F3ABB5E
        A36A828D40E27A14AE47E1FA3FAA12D2036BB08D40CCCCCCCCCCCCFC3F85DD70
        DDF9E58D40B81E85EB51B8FE3F6ACCB13314238E4052B81E85EB510040003BDA
        14B2678E4048E17A14AE470140879B9F17A2B28E403F0AD7A3703D02403883CB
        BFE5008F403533333333330340A7DF9CE7564F8F402A5C8FC2F5280440659E52
        69CF9A8F401F85EB51B81E054007AD2B1F29E08F4015AE47E17A140640907CB3
        F11E0E90400AD7A3703D0A074021B821C8F3259040FFFFFFFFFFFF0740000000
        0000369040F6285C8FC2F5084004E5F22D353D9040EC51B81E85EB09403260B3
        84973C9040E27A14AE47E10A40A0847FDEAF359040D6A3703D0AD70B405E6595
        15072A9040CCCCCCCCCCCC0C4082153304261B9040C3F5285C8FC20D401FA896
        84950A9040B81E85EB51B80E408C60FCE1BCF38F40AE47E17A14AE0F4018824F
        4713D58F4052B81E85EB511040B986EBE4E9BB8F40CDCCCCCCCCCC10401A0C42
        4114A78F4048E17A14AE47114093B765A1E0928F40C3F5285C8FC21140EA4352
        89927B8F403F0AD7A3703D1240E96B037D6D5D8F40B81E85EB51B812405AEA74
        00B5348F403533333333331340047AA297ACFD8E40AF47E17A14AE1340B2D587
        C697B48E40295C8FC2F5281440D875FAD6CC558E40A4703D0AD7A314404647D8
        7108E28D402085EB51B81E1540561E1920D9608D409A99999999991540C4BC82
        9963DA8C4015AE47E17A1416404AE4DA95CC568C4090C2F5285C8F1640A356E7
        CC38DE8B4009D7A3703D0A17408FD56DF6CC788B4085EB51B81E851740C42234
        CAAD2E8B4000000000000018400000000000088B407A14AE47E17A1840A5AEF8
        BC4D0A8B40F6285C8FC2F51840AF6ECBDBB6308B40703D0AD7A3701940C1FF86
        A4C0738B40EC51B81E85EB19407F213A5FF0CB8B406766666666661A408A93F3
        53CB318C40E27A14AE47E11A408715C2CAD69D8C405E8FC2F5285C1B401967B4
        0B98088D40D7A3703D0AD71B40E147D95E946A8D4053B81E85EB511C403C73CB
        6CE1BC8D40CDCCCCCCCCCC1C40AFF2804023FF8D4049E17A14AE471D409AAF09
        B938358E40C3F5285C8FC21D40D51287C112638E403E0AD7A3703D1E403B851A
        45A28C8E40B81E85EB51B81E409F6FE52ED8B58E403533333333331F40DF3A09
        6AA5E28E40AF47E17A14AE1F40CE4FA7E1FA168F4016AE47E17A1420402CC80E
        60BE568F4052B81E85EB512040083444FE39A38F4090C2F5285C8F20409867E5
        E8ACF98F40CECCCCCCCCCC204027DFFEA27E2B90400AD7A3703D0A2140CF49CC
        9D085C904048E17A14AE4721407FA1E077E78C904085EB51B81E852140F19341
        448EBC9040C3F5285C8FC22140DECEF41570E990400000000000002240000000
        00001291403F0AD7A3703D224031D797E14A3591407C14AE47E17A2240C20CAD
        CAC4549140B81E85EB51B82240215B5F977B729140F6285C8FC2F52240BF7CCE
        237D90914035333333333323400E2C1A4CD7B09140713D0AD7A37023407A2362
        EC97D59140AE47E17A14AE2340761DC6E0CC009240EC51B81E85EB234071D465
        0584349240295C8FC2F5282440209E327F7872924067666666666624404F7DA2
        E1A3B89240A4703D0AD7A3244056814F6293029340E17A14AE47E12440F8ECED
        DFC94B93401F85EB51B81E2540F8023239CA8F93405D8FC2F5285C25401706D0
        4C17CA93409A9999999999254018397CF933F69340D7A3703D0AD72540BEDEEA
        1DA30F944015AE47E17A14264000427749F611944052B81E85EB512640789AA2
        7230FC934090C2F5285C8F2640511B9CBCAAD29340CECCCCCCCCCC26406539CB
        CF339A93400AD7A3703D0A27408D6997549A57934048E17A14AE472740A32068
        F3AC0F934085EB51B81E85274083D3A4543AC79240C2F5285C8FC2274003F7B4
        2011839240FFFFFFFFFFFF274000000000004892403E0AD7A3703D284043F1D2
        62C51992407B14AE47E17A28405D0511D9DEF79140B81E85EB51B82840C70483
        BAB9E09140F6285C8FC2F5284004B8F15EC3D29140353333333333294091E725
        1E69CC9140713D0AD7A3702940EC5BE84F18CC9140AE47E17A14AE294094DD01
        4C3ED09140ED51B81E85EB294008353B6A48D791402B5C8FC2F5282A400F0B15
        F5A5DF91406766666666662A40B397A9DCDCE79140A4703D0AD7A32A401E2576
        AD81EE9140E37A14AE47E12A4080F94E3229F291402185EB51B81E2B400A5B08
        3668F191405E8FC2F5285C2B40EE8F7683D3EA91409A99999999992B405DDE6D
        E5FFDC9140D6A3703D0AD72B40898CC22682C6914015AE47E17A142C407320D2
        B8F5A5914052B81E85EB512C4051152515857B91408EC2F5285C8F2C40991520
        35C5499140CDCCCCCCCCCC2C4050CA7146801391400AD7A3703D0A2D4079DCC8
        7680DB904048E17A14AE472D401AF5D3F38FA4904085EB51B81E852D4039BD41
        EB78719040C2F5285C8FC22D40DADDC08A054590400000000000002E40000000
        00002290403E0AD7A3703D2E40CE960BF9360A90407C14AE47E17A2E40B07BCE
        4A16F78F40B91E85EB51B82E409AB5E869C3E58F40F6285C8FC2F52E40B9A628
        AF3FDA8F403433333333332F406E1A517A55CE8F40703D0AD7A3702F4017DC24
        2BCFBB8F40AE47E17A14AE2F4013B76621779C8F40EB51B81E85EB2F40C576D9
        BC176A8F4015AE47E17A1430409A25CD7F3F1F8F40343333333333304037CB3B
        FE64BF8E4051B81E85EB51304045C842CFBD538E40713D0AD7A3703040482551
        0E98E58D4090C2F5285C8F3040CCEAD5D6417E8D40AE47E17A14AE30405E2140
        4409278D40CDCCCCCCCCCC304083D1FE713CE98C40EB51B81E85EB3040C50381
        7B29CE8C400AD7A3703D0A314064D7F0A0FADE8C40295C8FC2F5283140F4BD51
        BE721C8D4048E17A14AE473140AD689E074E7A8D406766666666663140643EAA
        D629EB8D4085EB51B81E853140F9A54885A3618E40A4703D0AD7A3314046064D
        6D58D08E40C2F5285C8FC2314023C68AE8E5298F40E17A14AE47E131406E4CD5
        50E9608F400000000000003240FFFFFFFFFF678F401E85EB51B81E3240AD9F9E
        A970368F403E0AD7A3703D32403B4A466827D68E405C8FC2F5285C324071764C
        B0B9558E407B14AE47E17A3240069B06F6BCC38D409B99999999993240BF2ECA
        ADC62E8D40B81E85EB51B8324060A8EC4B6CA58C40D7A3703D0AD73240A17EC3
        4443368C40F6285C8FC2F532404A28A40CE1EF8B4016AE47E17A143340DBDB33
        DFA2DF8B40353333333333334010E51665B8048C4052B81E85EB513340D1ADC7
        9D2B558C40723D0AD7A37033400898AA81DFC68C4090C2F5285C8F3340990524
        09B74F8D40AE47E17A14AE33406258982C95E58D40CDCCCCCCCCCC334055F26B
        E45C7E8E40EC51B81E85EB33404E350329F10F8F400AD7A3703D0A34406AC968
        D545908F40295C8FC2F5283440BCCB9FE343F98F4048E17A14AE473440AF6D09
        527B259040676666666666344094642F3EF842904085EB51B81E853440F93210
        E961559040A3703D0AD7A334404B417A85015D9040C2F5285C8FC23440F5F73B
        46205A9040E07A14AE47E1344063BF235E074D9040FFFFFFFFFFFF3440000000
        00003690401E85EB51B81E354076ACCF94D31590403D0AD7A3703D3540CFC0A7
        BC98DE8F405B8FC2F5285C35406783FCA8698B8F407A14AE47E17A35406FEC80
        DEAE388F409A99999999993540A547184DFDEC8E40B71E85EB51B83540CBE0A5
        E4E9AE8E40D6A3703D0AD7354098030D9509858E40F6285C8FC2F53540CFFB30
        4EF1758E4014AE47E17A1436400503596C75878E403333333333333640BCFFD5
        97ABB68E4051B81E85EB5136404650E62505FB8E40713D0AD7A3703640BBD054
        59DB4B8F4090C2F5285C8F3640255DEC7487A08F40AE47E17A14AE364093D177
        BB62F08F40CDCCCCCCCCCC36400E05E13763199040EC51B81E85EB364065F14A
        EA852F90400BD7A3703D0A3740B8A8246350369040295C8FC2F52837405B2AE6
        8EE32B904048E17A14AE473740E6A2CB3D1E1290406666666666663740E54B7B
        4C63D68F4085EB51B81E8537401F8E49FD9D728F40A4703D0AD7A33740AE33D3
        FA4EFD8E40C2F5285C8FC23740BF63E9B1D87A8E40E17A14AE47E1374075455D
        8F9DEF8D40}
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
      Data = {
        01C800000000000000000000006666666666048E40C01E85EB51B8BE3F0A2A46
        22BD1D8E40B81E85EB51B8CE3FB7B5B457DC378E4008D7A3703D0AD73F77D140
        808C538E40B81E85EB51B8DE3F5545791596718E40343333333333E33F5AD9EC
        90C1928E400AD7A3703D0AE73F8D552A6CD7B78E40E27A14AE47E1EA3FFB81C0
        20A0E18E40B71E85EB51B8EE3FAB263E28E4108F4048E17A14AE47F13FB928CF
        FF3F468F40343333333333F33F1DDFA1CE50808F401E85EB51B81EF53FC9FAFE
        D669BC8F400AD7A3703D0AF73F55D0A2DBD8F78F40F7285C8FC2F5F83F2ADAA4
        CFF5179040E27A14AE47E1FA3FAFFD57F2F7309040CCCCCCCCCCCCFC3F03FD48
        B799459040B81E85EB51B8FE3F7202D6FF8154904052B81E85EB5100400BCCC5
        725B5C904048E17A14AE4701402DBA61FBB25C90403F0AD7A3703D0240F9DBF0
        3B745690403533333333330340BCDEFE01A94A90402A5C8FC2F5280440C66F17
        1B5B3A90401F85EB51B81E0540653CC6549426904015AE47E17A140640E7F196
        7C5E1090400AD7A3703D0A0740347B2AC086F18F40FFFFFFFFFFFF07409B9999
        9999C18F40F6285C8FC2F50840E7E7D8B4CC928F40EC51B81E85EB09402E485F
        9205668F40E27A14AE47E10A40CCEAE946ED3B8F40D6A3703D0AD70B401E0036
        E72C158F40CCCCCCCCCCCC0C4085B800886DF28E40C3F5285C8FC20D405B4407
        3E58D48E40B81E85EB51B80E40FFD3061E96BB8E40AE47E17A14AE0F40D097BC
        3CD0A88E4052B81E85EB511040D6A55585959C8E40CDCCCCCCCCCC1040FFE1D3
        BF44968E4048E17A14AE471140C26A807C78948E40C3F5285C8FC21140465B72
        06C8958E403F0AD7A3703D1240B6CEC0A8CA988E40B81E85EB51B8124038E082
        AE179C8E403533333333331340F9AACF62469E8E40AF47E17A14AE13401E4ABE
        10EE9D8E40295C8FC2F52814408999EECEA8998E40A4703D0AD7A3144019A00D
        68B8908E402085EB51B81E15404667769762838E409A9999999999154048FEC9
        7403728E4015AE47E17A1416405374A917F75C8E4090C2F5285C8F1640A1D8B5
        9799448E4009D7A3703D0A1740673A900C47298E4085EB51B81E851740DAA8D9
        8D5B0B8E4000000000000018403333333333EB8D407A14AE47E17A1840AC1CD7
        9924C98D40F6285C8FC2F518408B78647570A58D40703D0AD7A37019401D8E13
        FF51808D40EC51B81E85EB1940AFA41C70045A8D406766666666661A408B03B8
        01C3328D40E27A14AE47E11A40FCF11DEDC80A8D405E8FC2F5285C1B404FB786
        6B51E28C40D7A3703D0AD71B40D39A2AB697B98C4053B81E85EB511C403267CE
        2FE8908C40CDCCCCCCCCCC1C40905E38BE56698C4049E17A14AE471D407C9CCC
        FE77448C40C3F5285C8FC21D40F8CC20B4E2238C403E0AD7A3703D1E40019CCA
        A02D098C40B81E85EB51B81E4094B55F87EFF58B403533333333331F40B2C575
        2ABFEB8B40AF47E17A14AE1F405678A24C33EC8B4016AE47E17A14204077A60A
        23DBF88B4052B81E85EB512040B6B261BC80118C4090C2F5285C8F204022555E
        C52F338C40CECCCCCCCCCC204075AD307FB75A8C400AD7A3703D0A21406BDB08
        2BE7848C4048E17A14AE472140C2FE160A8EAE8C4085EB51B81E85214036378B
        5D7BD48C40C3F5285C8FC2214084A495667EF38C400000000000002240686666
        6666088D403F0AD7A3703D22402C1434FEE4108D407C14AE47E17A22404E234F
        4F350E8D40B81E85EB51B82240D8800EDB74028D40F6285C8FC2F52240D719C9
        22C1EF8C40353333333333234056DBD5A737D88C40713D0AD7A37023405DB28B
        EBF5BD8C40AE47E17A14AE2340FB8B416F19A38C40EC51B81E85EB234039554E
        B4BF898C40295C8FC2F528244063C6D5CFDE738C406766666666662440805228
        8DA2618C40A4703D0AD7A32440F260160C0F528C40E17A14AE47E1244084F2E9
        7E23448C401F85EB51B81E25400208ED17DF368C405D8FC2F5285C254033A269
        0941298C409A99999999992540E4C1A985481A8C40D7A3703D0AD72540DE67F7
        BEF4088C4015AE47E17A1426401F1DE03F48F48B4052B81E85EB512640E756C5
        420EDC8B4090C2F5285C8F26407305911249C18B40CECCCCCCCCCC2640A25A49
        BC15A58B400AD7A3703D0A27405388F44C91888B4048E17A14AE47274064C098
        D1D86C8B4085EB51B81E852740B8343C5709538B40C2F5285C8FC227402A17E5
        EA3F3C8B40FFFFFFFFFFFF27409B99999999298B403E0AD7A3703D2840898245
        32141C8B407B14AE47E17A2840E7EA6A8B30148B40B81E85EB51B828404B8071
        3D50128B40F6285C8FC2F5284047F0C0E0D4168B40353333333333294070E8C0
        0D20228B40713D0AD7A37029405816D95C93348B40AE47E17A14AE2940922771
        66904E8B40ED51B81E85EB2940B5C9F0C278708B402B5C8FC2F5282A40A52F27
        29809A8B406766666666662A4034FA56F1C4CA8B40A4703D0AD7A32A402A32CB
        570DFE8B40E37A14AE47E12A40F7D09BDC19318C402185EB51B81E2B4009D0E0
        FFAA608C405E8FC2F5285C2B40D028B24181898C409A99999999992B40BED427
        225DA88C40D6A3703D0AD72B4041CD5921FFB98C4015AE47E17A142C40CAA033
        DF33BB8C4052B81E85EB512C405BC937719FAB8C408EC2F5285C8F2C4062E1C5
        7C4D8F8C40CDCCCCCCCCCC2C40362BDAA5AA6A8C400AD7A3703D0A2D402EE970
        9023428C4048E17A14AE472D40A85D86E0241A8C4085EB51B81E852D40FDCA16
        3A1BF78B40C2F5285C8FC22D4085731E4173DD8B400000000000002E409B9999
        9999D18B403E0AD7A3703D2E40756F068793D68B407C14AE47E17A2E40B3E6EA
        CAC8E98B40B91E85EB51B82E40D1E04EC639078C40F6285C8FC2F52E404D3F3A
        DAE62A8C403433333333332F40A3E3B467D0508C40703D0AD7A3702F404DAFC6
        CFF6748C40AE47E17A14AE2F40CB8377735A938C40EB51B81E85EB2F409942CF
        B3FBA78C4015AE47E17A1430400F5C1CC232AF8C4034333333333330405C7DE1
        A454A98C4051B81E85EB5130402D83B2FC48998C40713D0AD7A37030400B1C2C
        6402828C4090C2F5285C8F30407CF6EA7573668C40AE47E17A14AE30400DC18B
        CC8E498C40CDCCCCCCCCCC3040442AAB02472E8C40EB51B81E85EB3040ABE0E5
        B28E178C400AD7A3703D0A3140C5E5EBA452088C40295C8FC2F52831400CAEF4
        3022028C4048E17A14AE47314053D33C0F6F048C40676666666666314050879B
        607C0E8C4085EB51B81E853140B2FBE7458D1F8C40A4703D0AD7A331402E62F9
        DFE4368C40C2F5285C8FC2314076ECA64FC6538C40E17A14AE47E131403CCCC7
        B574758C40000000000000324034333333339B8C401E85EB51B81E32400E7D76
        3A34C48C403E0AD7A3703D32407AADF78467EF8C405C8FC2F5285C32401EF2D2
        1DAC1B8D407B14AE47E17A3240AE782410E1478D409B99999999993240D36E08
        67E5728D40B81E85EB51B8324039029B2D989B8D40D7A3703D0AD732408D60F8
        6ED8C08D40F6285C8FC2F532407BB73C3685E18D4016AE47E17A143340C21FD9
        118BFC8D403533333333333340B1DEF9A673118E4052B81E85EB513340961CC8
        F32D208E40723D0AD7A37033401F9FD7A6AA288E4090C2F5285C8F3340F72BBC
        6EDA2A8E40AE47E17A14AE3340CD8809FAAD268E40CDCCCCCCCCCC33404C7B53
        F7151C8E40EC51B81E85EB334022C92D15030B8E400AD7A3703D0A3440F1C413
        316AF38D40295C8FC2F5283440A6CAC5263BD68D4048E17A14AE473440046B22
        DCEAB58D406766666666663440719E44AE0F958D4085EB51B81E853440505D47
        FA3F768D40A3703D0AD7A3344007A0451D125C8D40C2F5285C8FC23440FD5E5A
        741C498D40E07A14AE47E134409492A05CF53F8D40FFFFFFFFFFFF3440333333
        3333438D401E85EB51B81E3540122B6E7EA0548D403D0AD7A3703D3540AA2BB1
        69D8728D405B8FC2F5285C354045D89C49AA9B8D407A14AE47E17A354033D4D1
        72E5CC8D409A99999999993540BEC2F03959048E40B71E85EB51B835402F479A
        F3D43F8E40D6A3703D0AD73540D6046FF4277D8E40F6285C8FC2F53540FF9E0F
        9121BA8E4014AE47E17A143640597D5D11A6F48E40333333333333364097F20A
        498D2B8F4051B81E85EB5136405912302C4C5E8F40713D0AD7A3703640D0084D
        4D5A8C8F4090C2F5285C8F36402602E23E2FB58F40AE47E17A14AE3640872A6F
        9342D88F40CDCCCCCCCCCC364022AE74DD0BF58F40EC51B81E85EB3640915CB9
        57810590400BD7A3703D0A3740C89BE674D00C9040295C8FC2F52837406F8624
        577510904048E17A14AE47374099E73335DD1090406666666666663740C68964
        7D7E0E904085EB51B81E8537407337069ECF099040A4703D0AD7A3374022BB68
        0547039040C2F5285C8FC23740A4BEB743B6F68F40E17A14AE47E1374005DD5E
        C304E58F40}
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
      Data = {
        01C8000000000000000000000066666666665F9340C01E85EB51B8BE3F5C8487
        61C6429340B81E85EB51B8CE3FEA3CD66F5527934008D7A3703D0AD73FAA2A80
        A4420E9340B81E85EB51B8DE3F36E8B212BDF89240343333333333E33F26109C
        CDF3E792400AD7A3703D0AE73F123D69E815DD9240E27A14AE47E1EA3F950948
        7652D99240B71E85EB51B8EE3F4610668AD8DD924048E17A14AE47F13FED2CCB
        B4A6EB9240343333333333F33FF270E890870193401E85EB51B81EF53F8ED693
        E2D91C93400AD7A3703D0AF73F1CA03E5DF63A9340F7285C8FC2F5F83FFC0F5A
        B435599340E27A14AE47E1FA3F8968579BF0749340CCCCCCCCCCCCFC3F21ECA7
        C57F8B9340B81E85EB51B8FE3F1FDDBCE63B9A934052B81E85EB5100405BE670
        D9859E934048E17A14AE470140C82E53B5A79793403F0AD7A3703D0240ECD03D
        E3E187934035333333333303400F2B5607B67193402A5C8FC2F52804407B9BC1
        C5A55793401F85EB51B81E05407780A5C2323C934015AE47E17A1406404B3827
        A2DE2193400AD7A3703D0A07403E216C082B0B9340FFFFFFFFFFFF07409A9999
        9999FA9240F6285C8FC2F50840B7E0AB0705F29240EC51B81E85EB09403CBAFA
        3BACF09240E27A14AE47E10A40DFCAB42D27F59240D6A3703D0AD70B4057B708
        D40DFE9240CCCCCCCCCCCC0C405C242526F8099340C3F5285C8FC20D40A5B638
        1B7E179340B81E85EB51B80E40E91272AA37259340AE47E17A14AE0F40E0DDFF
        CABC31934052B81E85EB511040FDA69C88BC3B9340CDCCCCCCCCCC10406C86DD
        3DF242934048E17A14AE471140DBF4705FC6479340C3F5285C8FC2114047E896
        44A44A93403F0AD7A3703D1240B6568F44F74B9340B81E85EB51B8124024369A
        B62A4C93403533333333331340957CF7F1A94B9340AF47E17A14AE13400820E7
        4DE04A9340295C8FC2F52814406B4B181C384A9340A4703D0AD7A31440E8904A
        60DE4993402085EB51B81E154049BCA318A14993409A99999999991540B540C3
        164649934015AE47E17A1416405391482C9348934090C2F5285C8F16404A21D3
        2A4E47934009D7A3703D0A1740C16302E43C45934085EB51B81E851740E0CB75
        29254293400000000000001840CCCCCCCCCC3D93407A14AE47E17A1840275E96
        ED0E389340F6285C8FC2F518406E891FE31B319340703D0AD7A370194095DCA4
        5239299340EC51B81E85EB194096E562E1AC2093406766666666661A40623296
        34BC179340E27A14AE47E11A40F3507BF1AC0E93405E8FC2F5285C1B403DCF4E
        BDC4059340D7A3703D0AD71B40383B4D3D49FD924053B81E85EB511C40ED0C3B
        FA7EF59240CDCCCCCCCCCC1C40B1BDE8919DEE924049E17A14AE471D407B22A2
        4CD4E89240C3F5285C8FC21D40880D244F52E492403E0AD7A3703D1E4016512B
        BE46E19240B81E85EB51B81E4061BF74BEE0DF92403533333333331F40A42ABD
        744FE09240AF47E17A14AE1F401E65C105C2E2924016AE47E17A1420408D9A78
        7566E7924052B81E85EB512040A9F1861927EE924090C2F5285C8F20402416C3
        5F85F69240CECCCCCCCCCC2040D17FD6AFF9FF92400AD7A3703D0A214082A66A
        71FC09934048E17A14AE4721400D02290C0614934085EB51B81E852140440ABB
        E78E1D9340C3F5285C8FC22140F936CA6B0F2693400000000000002240000000
        00002D93403F0AD7A3703D22401AC4A9BC133293407C14AE47E17A2240B07DA4
        7CE8359340B81E85EB51B822401C0E71CB56399340F6285C8FC2F52240B85690
        34373D93403533333333332340DC38834362429340713D0AD7A3702340DF95CA
        83B0499340AE47E17A14AE23401B4FE780FA539340EC51B81E85EB2340E8455A
        C618629340295C8FC2F52824403068326AC37493406766666666662440EDF531
        2D398B9340A4703D0AD7A32440598D445FC5A39340E17A14AE47E12440408EA7
        41AFBC93401F85EB51B81E25406D5898153ED493405D8FC2F5285C2540A94B54
        1CB9E893409A99999999992540C3C7189767F89340D7A3703D0AD72540842C23
        C79001944015AE47E17A1426409B873FDD8102944052B81E85EB51264029A8AA
        2FECFA934090C2F5285C8F26402589761BA9EC9340CECCCCCCCCCC2640A2942A
        7AC1D993400AD7A3703D0A2740B9344E253EC4934048E17A14AE47274081D368
        F627AE934085EB51B81E8527400DDB01C787999340C2F5285C8FC2274074B5A0
        7066889340FFFFFFFFFFFF2740CDCCCCCCCC7C93403E0AD7A3703D2840E53DC2
        80347893407B14AE47E17A284064F08F60DA799340B81E85EB51B82840A87EF9
        0B6C809340F6285C8FC2F528400F83C222978A93403533333333332940FA97AE
        4409979340713D0AD7A3702940C557811170A49340AE47E17A14AE2940D15CFE
        2879B19340ED51B81E85EB29407B41E92AD2BC93402B5C8FC2F5282A40E1575D
        1042C593406766666666662A4030AA1181B6CA9340A4703D0AD7A32A40AB24CF
        42DBCD9340E37A14AE47E12A4090AA89465FCF93402185EB51B81E2B401B1F35
        7DF1CF93405E8FC2F5285C2B408865C5D740D093409A99999999992B4014612E
        47FCD09340D6A3703D0AD72B40FBF463BCD2D2934015AE47E17A142C40CFE3D5
        A271D6934052B81E85EB512C408A47FC1A2BDC93408EC2F5285C8F2C40445B4F
        C4C3E39340CDCCCCCCCCCC2C40AF542612F4EC93400AD7A3703D0A2D407869D8
        7774F7934048E17A14AE472D404ECFBC68FD02944085EB51B81E852D40E2BB2A
        58470F9440C2F5285C8FC22D40E26479B90A1C94400000000000002E40000000
        00002994403E0AD7A3703D2E404F4B65A5DC3594407C14AE47E17A2E4083268E
        3C4A429440B91E85EB51B82E40B4F9AE5EEF4D9440F6285C8FC2F52E40FE2CFC
        A4725894403433333333332F407828AAA87A619440703D0AD7A3702F403B54ED
        02AE689440AE47E17A14AE2F406218FA4CB36D9440EB51B81E85EB2F4006DD04
        203170944015AE47E17A1430403DCB45AEDC6F94403433333333333040B0AFC0
        DC146D944051B81E85EB513040757E150CA6689440713D0AD7A3703040C9A304
        705E63944090C2F5285C8F3040E48B4E3C0C5E9440AE47E17A14AE3040FFA2B3
        A47D599440CDCCCCCCCCCC30405655F4DC80569440EB51B81E85EB3040220FD1
        18E45594400AD7A3703D0A3140C1638EB172589440295C8FC2F528314066136A
        CB4C5E944048E17A14AE473140EF16A42B89669440676666666666314063A09D
        C32770944085EB51B81E853140D0E1B784287A9440A4703D0AD7A331403F0D54
        608B839440C2F5285C8FC23140BA54D347508B9440E17A14AE47E131404CEA96
        2C779094400000000000003240FFFFFFFFFF9194401E85EB51B81E324012E5EC
        AC428F94403E0AD7A3703D3240945D3004F78894405C8FC2F5285C3240C74A1A
        D02C8094407B14AE47E17A3240F08DFADAF37594409B999999999932404E0821
        EF5B6B9440B81E85EB51B83240299BDDD674619440D7A3703D0AD73240C12780
        5C4E599440F6285C8FC2F53240598F584AF853944016AE47E17A143340F5AC18
        AE695294403533333333333340EE52C5047A54944052B81E85EB513340B924C2
        4447599440723D0AD7A37033400B05DF4CEC5F944090C2F5285C8F33408DD6EB
        FB83679440AE47E17A14AE3340F37BB830296F9440CDCCCCCCCCCC3340EDD714
        CAF6759440EC51B81E85EB334028CDD0A6077B94400AD7A3703D0A34400133B3
        B3797D9440295C8FC2F528344049396423227D944048E17A14AE47344087F242
        3BF27A94406766666666663440A21666B0F377944085EB51B81E853440865DE4
        3730759440A3703D0AD7A334401C7FD486B1739440C2F5285C8FC234404F334D
        5281749440E07A14AE47E134400832654FA9789440FFFFFFFFFFFF3440323333
        33338194401E85EB51B81E3540CADEEDEDC68E94403D0AD7A3703D3540169D4B
        5C85A094405B8FC2F5285C354072C622962DB594407A14AE47E17A354039B349
        B37ECB94409A99999999993540C2BB96CB37E29440B71E85EB51B835406B38E0
        F617F89440D6A3703D0AD735408C81FC4CDE0B9540F6285C8FC2F5354082EFC1
        E5491C954014AE47E17A1436409A6B030631289540333333333333364038F48B
        5D772F954051B81E85EB513640E9C68C6DAE329540713D0AD7A370364059B3D6
        9C6A32954090C2F5285C8F364031893A52402F9540AE47E17A14AE36401B1889
        F4C3299540CDCCCCCCCCCC3640C52F93EA89229540EC51B81E85EB3640D69F29
        9B261A95400BD7A3703D0A37403A77128C2D119540295C8FC2F5283740D4978E
        84FD07954048E17A14AE473740C1DDF68AA3FE94406666666666663740171F4E
        9D25F5944085EB51B81E853740F03197B989EB9440A4703D0AD7A3374065ECD4
        DDD5E19440C2F5285C8FC237408F240A0810D89440E17A14AE47E1374087B039
        363ECE9440}
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
