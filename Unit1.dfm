object Menu: TMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsDialog
  Caption = 'The Arena'
  ClientHeight = 668
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tcMain: TTabControl
    Left = 0
    Top = 0
    Width = 1103
    Height = 668
    Align = alClient
    MultiLine = True
    TabOrder = 0
    Tabs.Strings = (
      'Accueil'
      'Param'#232'tres'
      'Combat'
      'Aide')
    TabIndex = 0
    Visible = False
    object pnAccueil: TPanel
      Left = 4
      Top = 24
      Width = 1095
      Height = 640
      Align = alClient
      DockSite = True
      TabOrder = 0
      DesignSize = (
        1095
        640)
      object Image2: TImage
        Left = 32
        Top = 85
        Width = 137
        Height = 185
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003C0802000000AFA2AEAB000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000005
          0F4944415478DAD5982D8823671880E7202222222222D01523061A1131D0C045
          44AC58B840533871B0270A5DB1E2A02B0A3D51538EA3A215575AB1E2C48A1515
          B770E2A0394861C58A881422468C183162440A232222222216B6F3BE4FF2E523
          B33F2D143AF3C2BE1BBE7C3FCFCCFBFBE5D1CDCD8D73B70CBA7B996ED4AA66A4
          56A988AE569C8764B9BA167D7D6D46E6CB55A68793D93DAB1E9500A8D36E64BA
          DDAC9BEDD610164AB35E3323B7A0E8AA74B1DCC1B2770BD345A6A7E1BC5440A0
          34D5402E475AA6A95765BC5AADDC83721756DE94898EA76A441BAB6C407BAA6D
          F96F8192B9E8305E141EA8EDD5CD61B83358F73B2F616C27853C106263E58110
          B08A0D840CDA920C71E1C56AB5830544DE886085B3DD305E03E9AA7CD8232B45
          2C0F50C7DDBA361BF97B0DB3916D085B2E232908072D799840B16C83F299DDD8
          1963F130E501E26B16D8E10DD0384933DDF7B647229E0641AC26C05549198955
          3ADC868C4C93B9D9D996720211FC48AC5BF7DCA6C16AAACB535838D286CB1F86
          CC28171A28D16C6140EDF45806202679FADA3B0A315508B09EB6DD4C7F081333
          87A480F3922C4883EC964F13A95556F9B63C40A0B0358E4C71ADAA6B932411FB
          E0BC80989FBFD29481E1080B50C02A0F10EEEC35EAC664B684E9DCB86A3C5F98
          C3102058BB29D58D9D1DD60EA06B29200F98EC7F06FAFDDB27D9BF2F7EFE23D3
          9F3FFEE45620D7751542D37F9A9A8379F976416D5B8606B4D96C2A9C968B24B9
          15E8E39F7F651A92A202BDB90C9C4DA2A340AE815A9E6CEAB6B66F7CB5305868
          8CB8065203018176AADB549926910045B101A224935A5F1EF88504FAE5ABC7D9
          BF0F4162805EF4DA993E9F463BCE484AEC29A2DB92C5C3D1D018C8F775E46A9C
          E9417F20068AE421C77A3C89D496A38E3CE4DB7168809EFA6E2181BE7EF2A9B3
          69BB5A56B882680BCEDE57AC911E4083F1BCE39939EFA6723CED873DD36E58D7
          8FE71328726EA4E6A3D5291ED08F879F99211A8C41575EFEAFC32B81F39F65FA
          F56B5AAAEFB3BFC3C3C34C5F5C5C389B3461375C1C4018DB331DE787ECEFD52B
          F97615BCCFF437837D31F144CDAA8980D7513C209C9A5277A2EEDC6E8B5E2C04
          711C8A6B1F7404F1722A8B175A08D98297BCAF6902B9228CD50178BCBA966A7B
          875E5BDCB95E97E3C3509CFA545D9B725E3C208AEBD181B7038480650B1B5104
          C299600D7A5DF3ED703C911DF6B605E7AE1D101BE8FC322E30D04FCF3B99EE7A
          9AF27501CBEC528A59D1030D690E6EF506E680683C34A0430D780C81B6CB2DA0
          A9EA492CF3BF7B372D3C109798F54F557BE2AA9781BCCCB78138A95F9B1B875D
          5F95F498037F6B62E6D390D0C6E3F8C15266BEF02B66FE6C26EE4F6AE592596C
          20E4ECB8675E6FAD56332F9F6066D367DEB599C3ABCE0BA6C7B8EFE38A791812
          04865E2EB7ADFEF1D9D8AC2D36D0495F52D651B76580EC651347C6E773F9DC6A
          C9671A53C21B211DD0EC469124D54643D0BB4EB4F3A8EC7C3E91F1D351541220
          E4B7937D6753EA581C6B93EA697BFA26DA5E7AFAFDBEB369CD902090E2301A8D
          CCC8CBD66A67075028E75F9E5EED9C5E06200C8703920208602EC2B8245898A3
          6A5D143116660585B0E032BEFE314F439D40B18D551EA0BBB0101A0F2E4998A0
          E56F8B6B144C8C8162ABE943EE47291B908D75AC6D09E516738065FFA482F073
          05E10D0A66A5949E699B71174A3981F2E6EB78AEC1B24B2362976750A671F2A0
          99CA0F646379EBEBA2678CD8F4B689318D0363A051181BDC7F82527E205BB814
          E0BCA4008450C7D969DAFFAD140EE86F28427223EC3FD24C0000000049454E44
          AE426082}
        ShowHint = False
        Stretch = True
        Visible = False
      end
      object lProfils: TLabel
        Left = 685
        Top = 101
        Width = 39
        Height = 13
        Caption = 'Profils : '
      end
      object lCredits: TLabel
        Left = 219
        Top = 619
        Width = 326
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'R'#233'alis'#233' par Hugo MARCELLIN et Bryan PERROT @ 2015 - Alpha 1.0 '
        ExplicitTop = 327
      end
      object reTxtAccueil: TRichEdit
        Left = 251
        Top = 82
        Width = 345
        Height = 209
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HideScrollBars = False
        Lines.Strings = (
          
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eg' +
            'et ante '
          'ante. Morbi sit amet '
          
            'tristique urna. Suspendisse ac magna et neque laoreet hendrerit.' +
            ' '
          'Morbi iaculis dolor vel eros '
          
            'facilisis, ut sollicitudin ligula tristique. Aliquam at lorem no' +
            'n sem gravida '
          'blandit ac et nisl. '
          'Aenean faucibus eu magna ut mollis. Quisque nec metus non leo '
          'pharetra lobortis nec '
          
            'feugiat velit. Aenean varius eros nec arcu tristique, vel maximu' +
            's arcu '
          'ultricies. Vestibulum '
          
            'ante ipsum primis in faucibus orci luctus et ultrices posuere cu' +
            'bilia '
          'Curae; Nunc consectetur '
          'suscipit enim tincidunt accumsan. Mauris fringilla nunc a augue '
          'fermentum, pellentesque '
          'tincidunt odio viverra.'
          ''
          
            'Duis interdum vehicula ultrices. Mauris ultrices quam sit amet e' +
            'gestas '
          'facilisis. Praesent '
          
            'egestas eros rutrum, luctus tellus sit amet, mollis arcu. Phasel' +
            'lus mi '
          'nisl, egestas eu massa '
          'sit amet, varius vehicula eros. Praesent gravida dui non mauris '
          'dignissim, ut laoreet quam '
          
            'sodales. Vivamus sodales nibh eu nisl dapibus, vitae bibendum du' +
            'i '
          'facilisis. Integer ipsum '
          
            'est, cursus at justo sed, cursus suscipit nunc. Nullam dignissim' +
            ' justo '
          'nec lorem pulvinar '
          
            'commodo. Nullam rhoncus blandit nulla, quis gravida turpis portt' +
            'itor '
          'at. '
          'Donec et porta '
          
            'sapien. Pellentesque euismod ipsum quam, a iaculis quam iaculis ' +
            'at. '
          'Donec pretium ac erat '
          
            'ut rhoncus. Ut ultrices massa hendrerit, tristique magna id, ves' +
            'tibulum '
          'risus. Ut faucibus '
          
            'eget nisi quis malesuada. Pellentesque finibus, purus ut ferment' +
            'um '
          'fermentum, nisl tellus '
          'accumsan purus, sed suscipit leo lorem non nunc. ')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object lbxProfils: TListBox
        Left = 893
        Top = 120
        Width = 97
        Height = 150
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
      end
      object btnEditProfil: TButton
        Left = 996
        Top = 128
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Modifier'
        TabOrder = 2
      end
      object btnSupprProfil: TButton
        Left = 996
        Top = 187
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Supprimer'
        TabOrder = 3
      end
      object btnStart: TButton
        Left = 869
        Top = 535
        Width = 202
        Height = 89
        Anchors = [akRight, akBottom]
        Caption = 'C'#39'EST PARTI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 4
      end
    end
    object pnParametres: TPanel
      Left = 4
      Top = 24
      Width = 1095
      Height = 640
      Align = alClient
      DockSite = True
      TabOrder = 1
      Visible = False
    end
    object pnCombat: TPanel
      Left = 4
      Top = 24
      Width = 1095
      Height = 640
      Align = alClient
      DockSite = True
      TabOrder = 2
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1103
    Height = 668
    ActivePage = tabCombat
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object tabAccueil: TTabSheet
      Caption = 'Accueil'
      DesignSize = (
        1095
        640)
      object lblAbout: TLabel
        Left = 372
        Top = 627
        Width = 326
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'R'#233'alis'#233' par Hugo MARCELLIN et Bryan PERROT @ 2015 - Alpha 1.0 '
      end
      object lblProfils: TLabel
        Left = 858
        Top = 251
        Width = 76
        Height = 13
        Caption = 'Liste de profils :'
      end
      object Label5: TLabel
        Left = 319
        Top = 45
        Width = 405
        Height = 117
        Caption = 'THE ARENA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -96
        Font.Name = 'Impact'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSupprimerProfil: TButton
        Left = 855
        Top = 475
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Supprimer'
        TabOrder = 0
        OnClick = btnSupprimerProfilClick
      end
      object listProfils: TListBox
        Left = 855
        Top = 276
        Width = 202
        Height = 193
        Anchors = [akTop, akRight]
        ItemHeight = 13
        TabOrder = 1
      end
      object btnModifierProfil: TButton
        Left = 982
        Top = 475
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Modifier'
        TabOrder = 2
        OnClick = btnModifierProfilClick
      end
      object btnAide: TButton
        Left = 24
        Top = 559
        Width = 165
        Height = 45
        Caption = 'Aide'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnAideClick
      end
      object memoAccueil: TMemo
        Left = 319
        Top = 254
        Width = 405
        Height = 259
        Lines.Strings = (
          'memoAccueil')
        TabOrder = 4
      end
      object btnAccueil: TButton
        Left = 855
        Top = 533
        Width = 202
        Height = 89
        Anchors = [akRight, akBottom]
        Caption = 'C'#39'EST PARTI '#8658
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Impact'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 5
        OnClick = btnAccueilClick
      end
      object btnQuitterAccueil: TButton
        Left = 996
        Top = 3
        Width = 96
        Height = 38
        Caption = 'Quitter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnQuitterAccueilClick
      end
    end
    object tabParametre: TTabSheet
      Caption = 'Parametres'
      ImageIndex = 1
      DesignSize = (
        1095
        640)
      object Label2: TLabel
        Left = 80
        Top = -1
        Width = 324
        Height = 80
        Caption = 'PARAMETRES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -64
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
      end
      object lAttaqueDefense: TLabel
        Left = 583
        Top = 82
        Width = 104
        Height = 13
        Caption = 'Attaque et d'#233'fense : '
      end
      object lAttributsPartie: TLabel
        Left = 168
        Top = 82
        Width = 109
        Height = 13
        Caption = 'Attributs de la partie : '
      end
      object lblNomProfil: TLabel
        Left = 534
        Top = 18
        Width = 188
        Height = 13
        Caption = 'Veuillez saisir un nom pour votre profil: '
        Visible = False
      end
      object btnCombat: TButton
        Left = 855
        Top = 533
        Width = 202
        Height = 89
        Anchors = [akRight, akBottom]
        Caption = 'COMBAT '#8658
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Impact'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        TabOrder = 0
        OnClick = btnCombatClick
      end
      object checkProfil: TCheckBox
        Left = 430
        Top = 37
        Width = 97
        Height = 17
        Caption = 'Sauver ce profil'
        TabOrder = 1
        OnClick = checkProfilClick
      end
      object pnAttaqueDef: TPanel
        Left = 359
        Top = 101
        Width = 698
        Height = 380
        BorderStyle = bsSingle
        TabOrder = 2
        object lDegMin: TLabel
          Left = 57
          Top = 67
          Width = 127
          Height = 13
          Caption = 'D'#233'gats minimaux inflig'#233's : '
        end
        object lDegMax: TLabel
          Left = 57
          Top = 162
          Width = 131
          Height = 13
          Caption = 'D'#233'gats maximaux inflig'#233's : '
        end
        object lCoeffCrit: TLabel
          Left = 57
          Top = 266
          Width = 163
          Height = 13
          Caption = 'Coefficient de coup critique (%) : '
        end
        object lPeAction: TLabel
          Left = 401
          Top = 67
          Width = 141
          Height = 13
          Caption = 'Co'#251't d'#39'une action ('#233'nergie) : '
        end
        object lPeBlocage: TLabel
          Left = 401
          Top = 162
          Width = 135
          Height = 13
          Caption = 'Co'#251't du blocage ('#233'nergie) : '
        end
        object lPeBonus: TLabel
          Left = 401
          Top = 266
          Width = 118
          Height = 13
          Caption = 'Points d'#39#233'nergie bonus : '
        end
        object seDegMin: TSpinEdit
          Left = 225
          Top = 64
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 0
          TabOrder = 0
          Value = 4
        end
        object seDegMax: TSpinEdit
          Left = 225
          Top = 159
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 1
          Value = 8
        end
        object seCoeffCrit: TSpinEdit
          Left = 225
          Top = 263
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 100
          TabOrder = 2
          Value = 250
        end
        object sePeAction: TSpinEdit
          Left = 560
          Top = 64
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 0
          TabOrder = 3
          Value = 5
        end
        object sePeBlocage: TSpinEdit
          Left = 561
          Top = 159
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 0
          TabOrder = 4
          Value = 5
        end
        object sePeBonus: TSpinEdit
          Left = 561
          Top = 263
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 5
          Value = 1
        end
      end
      object pnAttributsPartie: TPanel
        Left = 80
        Top = 101
        Width = 249
        Height = 380
        BorderStyle = bsSingle
        TabOrder = 3
        object lHpInitiaux: TLabel
          Left = 16
          Top = 61
          Width = 108
          Height = 13
          Caption = 'Points de vie initiaux : '
        end
        object lEpInitiaux: TLabel
          Left = 16
          Top = 140
          Width = 123
          Height = 13
          Caption = 'Points d'#39#233'nergie initiaux : '
        end
        object lRegenHp: TLabel
          Left = 16
          Top = 226
          Width = 105
          Height = 13
          Caption = 'R'#233'g'#233'n'#233'ration de PV : '
        end
        object lTempsTour: TLabel
          Left = 16
          Top = 314
          Width = 135
          Height = 13
          Caption = 'Temps de tour (secondes) : '
        end
        object seHpInitiaux: TSpinEdit
          Left = 176
          Top = 58
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 0
          Value = 100
        end
        object seEpInitiaux: TSpinEdit
          Left = 176
          Top = 137
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 0
          TabOrder = 1
          Value = 100
        end
        object seRegenHp: TSpinEdit
          Left = 176
          Top = 223
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 0
          TabOrder = 2
          Value = 2
        end
        object seTempsTour: TSpinEdit
          Left = 176
          Top = 311
          Width = 56
          Height = 22
          MaxValue = 999
          MinValue = 1
          TabOrder = 3
          Value = 5
        end
      end
      object reAideParams: TRichEdit
        Left = 80
        Top = 535
        Width = 689
        Height = 89
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          ''
          
            'Veuillez d'#233'finir les param'#232'tres de la partie avant de commencer ' +
            'celle-ci.'
          ''
          
            'Ces param'#232'tres permettent de personnaliser votre exp'#233'rience de j' +
            'eu. Une fois satisfait de vos choix,'
          'appuyez sur le bouton "Combat" pour commencer '#224' jouer.')
        ParentFont = False
        TabOrder = 4
      end
      object editNomProfil: TEdit
        Left = 533
        Top = 37
        Width = 189
        Height = 21
        TabOrder = 5
        Visible = False
      end
    end
    object tabCombat: TTabSheet
      Caption = 'Combat'
      ImageIndex = 2
      ExplicitLeft = 8
      object imgJoueur: TImage
        Left = 187
        Top = 292
        Width = 150
        Height = 250
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003A0806000000F699DAE1000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000005
          214944415478DAED9A2F88237714C7F720624444C48811818E18E8888840035D
          11E88A858B58B1D042CFB57ECFD5ACA82CF45CCDADAB38B9A2858546AC58B185
          2CAC18113162C4883988181111111111B83B7EBFF7097D8F0CEC51B5937BE631
          F9CDFCDEFBE6F7FDBD3FBF99171F3EC9D113E4ECB8EF74D80DF68E773B1DAF83
          CE53A63B5A6FB65E6FB7EAF7E57AE3F4F471F1A4795EB416C068103A3D887ACA
          D020F4D73D01D2EF7515B05EB01FE06AB3510EAE4497CB95D3B55C63873F24AF
          FD78962F0F0480753C12C72271D43A8CA18E681C8522F56ABDD7B0A58EBDAF94
          EB0DF308400BA4BD004E93C86928816300C171AEF3859F3811E00B7100A08C37
          89A550B5D480009297AB960218243D65300EBD63500803C37EA800582A58B92B
          7C383C4D7D189E0B103633F6B8C60E0E370940DA0B80841488C66100CCAADAE9
          49A21D43A0522961B0124AC54239AED9ECFC6159B5547611EC03B4BD00980821
          9C2284B7711C292051A081AF0D0512330F62A9C2E6B7009997CDDD7E002C6122
          4B4EB824E100E47C103B7D93577BEFB72506CF333F94B062A9871C0E000CB369
          2921025332204D455C93343DBF91B00C95A028543B1C006CDE44CAE7916CDAAD
          2DC2288FC5210036090EE270641A248AC24C1C070054FB02208E63595249FD75
          AD00B0F4767386A601DA0188FCBC815C5755A500D0F0D0D81C1E80B1940AA334
          F106E35453A82AF4B5000ACCA606300E234DF36545E929542E5A0EE09F5F5E3A
          00B79288481CBB66DEA4FA5A1C21818D05585E2D94418023F6F741ECF54C1C25
          1146063825040028062762BF7D00CAE5566ED0096C0AC0E5FE26DD1671E7C358
          8DDFCCABBDF75981C267E22041E1569AF924ECB40CC01F3F7DEB00503C6DBB32
          411CAAA55FF74F9CBEBABA72FAE2E2C2E9F97CEEF4C3C383D3DF7FF795D3BF9D
          8D9563BF4E674EFFFDEF7BF5BC9D6F329978BB7F5E3A0DE5A6D2E874D61E10E5
          F9F30770F1F26B0780E63C95C43590228E440295109616E03C4FF1772286099B
          D7B3CC0396D6931611479AE62791722C53883F3CFFFC01FCFEE3371FFE3B0080
          F39149302B3F4E8980010C13DEBA42C1947CD58BBDE1A2F240D7BA65B4F384BB
          A34CDD82DE648502809FCF1F009B98A5B514E8C944E8154096FEFE51224B1F1D
          7BA0520A44C14A01A8856ABBD2A17E742A2BE508320CF7DA41DF4B30B17E3E7F
          0014733F9F266A69FAA16E21EDD2EE28929C794A64774E53B4A5692CE3277EE9
          A7EFFC7C522AC4A3533F5E4EFD782DB80C55772DA6245028F4EEAE6C29005A3C
          C217C71F6CB2619A2A476840F285343662B863CAE4AD508B575383FEFE06695E
          F8FB16E605877D15D53E00C8E5F9C0695238075163A1443AD49BB510006F67B9
          076E5A4684969303B1D7636F2715006CEE62EE37F74CC22E076494346F6E7235
          6FFB0040250C10B6CE8E87DE31D9C445A15BC9607774B8521440FABB23C79E50
          4337FDA95093B0397DF44522E1923F08EAB417C00F277E495F0D3D10C2D828D6
          89CD36EF6CC620F4BACA1F95A178E0A9B759567E5CA8679B7D0064D2A212C6AF
          E7DEF1BFEEAB960340DEBC1A394DB96B8BB5DBDC4FC8264FBAF5D1E748B9F60E
          47BB26DDFF61B6D8A35CBFBCCEF6CED35E005089574924B6A8E9731B0106C576
          C59C48BDD1451A8E5AA9CD47201CEE5AEAB41F00F27AE2C3DB89BCA806088E52
          56DB0665650E77EDE7395092321A60387E2F2FC8DFDEEA707D78003E1708D2EF
          EBA3C5C5427F42F67F1D3F3C00089B7B14C9875192EA9348B784513254CFD5E5
          5C3B5C7BC01C976472DDB459BF006812A845C26BFA2C13A15524413D952AAD05
          F01113AFBDEDA129DDCD0000000049454E44AE426082}
        Stretch = True
      end
      object imgOrdinateur: TImage
        Left = 811
        Top = 292
        Width = 150
        Height = 250
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003A0806000000F699DAE1000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC200000EC20115284A80000005
          214944415478DAED9A2F88237714C7F720624444C48811818E18E8888840035D
          11E88A858B58B1D042CFB57ECFD5ACA82CF45CCDADAB38B9A2858546AC58B185
          2CAC18113162C4883988181111111111B83B7EBFF7097D8F0CEC51B5937BE631
          F9CDFCDEFBE6F7FDBD3FBF99171F3EC9D113E4ECB8EF74D80DF68E773B1DAF83
          CE53A63B5A6FB65E6FB7EAF7E57AE3F4F471F1A4795EB416C068103A3D887ACA
          D020F4D73D01D2EF7515B05EB01FE06AB3510EAE4497CB95D3B55C63873F24AF
          FD78962F0F0480753C12C72271D43A8CA18E681C8522F56ABDD7B0A58EBDAF94
          EB0DF308400BA4BD004E93C86928816300C171AEF3859F3811E00B7100A08C37
          89A550B5D480009297AB960218243D65300EBD63500803C37EA800582A58B92B
          7C383C4D7D189E0B103633F6B8C60E0E370940DA0B80841488C66100CCAADAE9
          49A21D43A0522961B0124AC54239AED9ECFC6159B5547611EC03B4BD00980821
          9C2284B7711C292051A081AF0D0512330F62A9C2E6B7009997CDDD7E002C6122
          4B4EB824E100E47C103B7D93577BEFB72506CF333F94B062A9871C0E000CB369
          2921025332204D455C93343DBF91B00C95A028543B1C006CDE44CAE7916CDAAD
          2DC2288FC5210036090EE270641A248AC24C1C070054FB02208E63595249FD75
          AD00B0F4767386A601DA0188FCBC815C5755A500D0F0D0D81C1E80B1940AA334
          F106E35453A82AF4B5000ACCA606300E234DF36545E929542E5A0EE09F5F5E3A
          00B79288481CBB66DEA4FA5A1C21818D05585E2D94418023F6F741ECF54C1C25
          1146063825040028062762BF7D00CAE5566ED0096C0AC0E5FE26DD1671E7C358
          8DDFCCABBDF75981C267E22041E1569AF924ECB40CC01F3F7DEB00503C6DBB32
          411CAAA55FF74F9CBEBABA72FAE2E2C2E9F97CEEF4C3C383D3DF7FF795D3BF9D
          8D9563BF4E674EFFFDEF7BF5BC9D6F329978BB7F5E3A0DE5A6D2E874D61E10E5
          F9F30770F1F26B0780E63C95C43590228E440295109616E03C4FF1772286099B
          D7B3CC0396D6931611479AE62791722C53883F3CFFFC01FCFEE3371FFE3B0080
          F39149302B3F4E8980010C13DEBA42C1947CD58BBDE1A2F240D7BA65B4F384BB
          A34CDD82DE648502809FCF1F009B98A5B514E8C944E8154096FEFE51224B1F1D
          7BA0520A44C14A01A8856ABBD2A17E742A2BE508320CF7DA41DF4B30B17E3E7F
          0014733F9F266A69FAA16E21EDD2EE28929C794A64774E53B4A5692CE3277EE9
          A7EFFC7C522AC4A3533F5E4EFD782DB80C55772DA6245028F4EEAE6C29005A3C
          C217C71F6CB2619A2A476840F285343662B863CAE4AD508B575383FEFE06695E
          F8FB16E605877D15D53E00C8E5F9C0695238075163A1443AD49BB510006F67B9
          076E5A4684969303B1D7636F2715006CEE62EE37F74CC22E076494346F6E7235
          6FFB0040250C10B6CE8E87DE31D9C445A15BC9607774B8521440FABB23C79E50
          4337FDA95093B0397DF44522E1923F08EAB417C00F277E495F0D3D10C2D828D6
          89CD36EF6CC620F4BACA1F95A178E0A9B759567E5CA8679B7D0064D2A212C6AF
          E7DEF1BFEEAB960340DEBC1A394DB96B8BB5DBDC4FC8264FBAF5D1E748B9F60E
          47BB26DDFF61B6D8A35CBFBCCEF6CED35E005089574924B6A8E9731B0106C576
          C59C48BDD1451A8E5AA9CD47201CEE5AEAB41F00F27AE2C3DB89BCA806088E52
          56DB0665650E77EDE7395092321A60387E2F2FC8DFDEEA707D78003E1708D2EF
          EBA3C5C5427F42F67F1D3F3C00089B7B14C9875192EA9348B784513254CFD5E5
          5C3B5C7BC01C976472DDB459BF006812A845C26BFA2C13A15524413D952AAD05
          F01113AFBDEDA129DDCD0000000049454E44AE426082}
        Stretch = True
      end
      object lblContext: TLabel
        Left = 480
        Top = 27
        Width = 134
        Height = 25
        Caption = 'labContextuel '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object lActions: TLabel
        Left = 86
        Top = 89
        Width = 45
        Height = 13
        Caption = 'Actions : '
      end
      object vueVieJoueur: TImage
        Left = 144
        Top = 550
        Width = 251
        Height = 31
      end
      object lblPVJoueur: TLabel
        Left = 144
        Top = 556
        Width = 19
        Height = 19
        Caption = 'PV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object vueEnergieJoueur: TImage
        Left = 144
        Top = 590
        Width = 251
        Height = 31
      end
      object lblEnergieJoueur: TLabel
        Left = 144
        Top = 594
        Width = 53
        Height = 19
        Caption = 'Energie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblVersus: TLabel
        Left = 480
        Top = 400
        Width = 172
        Height = 60
        Caption = 'Versus : '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -48
        Font.Name = 'Impact'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object VueVieOrdinateur: TImage
        Left = 752
        Top = 550
        Width = 251
        Height = 31
      end
      object vueEnergieOrdinateur: TImage
        Left = 752
        Top = 590
        Width = 251
        Height = 31
      end
      object lblPVOrdinateur: TLabel
        Left = 752
        Top = 556
        Width = 19
        Height = 19
        Caption = 'PV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblEpOrdinateur: TLabel
        Left = 752
        Top = 594
        Width = 53
        Height = 19
        Caption = 'Energie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTitreCombat: TLabel
        Left = 80
        Top = -1
        Width = 209
        Height = 80
        Caption = 'COMBAT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -64
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
      end
      object lblChrono: TLabel
        Left = 462
        Top = 466
        Width = 203
        Height = 34
        Alignment = taCenter
        Caption = 'lblChrono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblActionOrdi: TLabel
        Left = 869
        Top = 186
        Width = 60
        Height = 13
        Caption = 'lblActionOrdi'
      end
      object pnActions: TPanel
        Left = 80
        Top = 108
        Width = 305
        Height = 178
        BorderStyle = bsSingle
        Caption = 'pnActions'
        TabOrder = 0
        object btnBlocageHaut: TButton
          Left = 4
          Top = 7
          Width = 83
          Height = 25
          Caption = 'Blocage Haut'
          TabOrder = 0
          OnClick = btnBlocageHautClick
        end
        object btnBlocageCentre: TButton
          Left = 4
          Top = 71
          Width = 83
          Height = 25
          Caption = 'Blocage centre'
          TabOrder = 1
        end
        object btnBlocageBas: TButton
          Left = 4
          Top = 135
          Width = 83
          Height = 25
          Caption = 'Blocage bas'
          TabOrder = 2
        end
        object btnEsquiveHaut: TButton
          Left = 105
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Esquive Haute'
          TabOrder = 3
        end
        object btnConcentration: TButton
          Left = 105
          Top = 71
          Width = 75
          Height = 25
          Caption = 'Concentration'
          TabOrder = 4
        end
        object btnEsquiveBas: TButton
          Left = 105
          Top = 135
          Width = 75
          Height = 25
          Caption = 'Esquive basse'
          TabOrder = 5
        end
        object btnAttaqueHaut: TButton
          Left = 204
          Top = 7
          Width = 85
          Height = 25
          Caption = 'Attaque haute'
          TabOrder = 6
        end
        object btnAttaqueCentre: TButton
          Left = 204
          Top = 71
          Width = 85
          Height = 25
          Caption = 'Estoc'
          TabOrder = 7
          OnClick = btnAttaqueCentreClick
        end
        object btnAttaqueBas: TButton
          Left = 204
          Top = 135
          Width = 85
          Height = 25
          Caption = 'Attaque basse'
          TabOrder = 8
        end
      end
      object btnlancerCombat: TButton
        Left = 462
        Top = 406
        Width = 203
        Height = 54
        Caption = 'Lancer combat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnlancerCombatClick
      end
      object btnQuitterCombat: TButton
        Left = 996
        Top = 3
        Width = 96
        Height = 38
        Caption = 'Quitter'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnQuitterCombatClick
      end
      object btnPause: TButton
        Left = 996
        Top = 47
        Width = 96
        Height = 42
        Caption = 'Pause'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = btnPauseClick
      end
    end
  end
  object timerAnimation: TTimer
    OnTimer = timerAnimationTimer
    Left = 8
    Top = 632
  end
  object timerAction: TTimer
    Interval = 100
    OnTimer = timerActionTimer
    Left = 8
    Top = 592
  end
  object Table1: TTable
    TableName = 'profils.dbf'
    Left = 8
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 8
    Top = 424
  end
  object Query1: TQuery
    DataSource = DataSource1
    SQL.Strings = (
      'select nom from PROFILS.dbf')
    Left = 8
    Top = 384
  end
end
