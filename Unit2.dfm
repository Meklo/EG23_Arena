object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Aide'
  ClientHeight = 561
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lHowToPlay: TLabel
    Left = 24
    Top = 16
    Width = 143
    Height = 26
    Caption = 'Comment jouer : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object lParam: TLabel
    Left = 24
    Top = 256
    Width = 136
    Height = 26
    Caption = 'Param'#233'trages : '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object btnOK: TButton
    Left = 543
    Top = 528
    Width = 75
    Height = 25
    Hint = 'hjkljlm'
    Caption = 'Fermer'
    TabOrder = 0
    OnClick = btnOKClick
  end
  object mHowToPlay: TMemo
    Left = 24
    Top = 56
    Width = 569
    Height = 177
    Cursor = crArrow
    Color = clBtnFace
    Lines.Strings = (
      
        'Le jeu consiste en un combat entre vous, le joueur, contre l'#39'ord' +
        'inateur. Le gagnant du combat est celui qui mettra '
      
        'les points de vie de son adversaire '#224' 0, ou qui '#233'puisera toute s' +
        'on '#233'nergie. Le jeu se d'#233'roule au tour par tour.'
      
        'Vous disposez chacun de 9 actions qu'#39'il vous est possible de r'#233'a' +
        'liser. Ces ations sont :'
      #8226' Attaque '#224' la t'#234'te'
      #8226' Attaque '#224' l'#8217'abdomen'
      #8226' Attaque aux jambes'
      
        #8226' Esquive basse (esquive une attaque '#224' l'#8217'abdomen et une attaque ' +
        #224' la t'#234'te)'
      
        #8226' Esquive haute (esquive une attaque '#224' l'#8217'abdomen et une attaque ' +
        'aux jambes)'
      #8226' Blocage haut (bloque une attaque '#224' la t'#234'te)'
      #8226' Blocage au centre (bloque une attaque '#224' l'#8217'abdomen)'
      #8226' Blocage bas (bloque une attaque aux jambes)'
      
        #8226' Concentration (si la concentration est r'#233'ussie, la prochaine a' +
        'ttaque peut'
      #234'tre critique) ')
    ReadOnly = True
    TabOrder = 1
  end
  object mParam: TMemo
    Left = 24
    Top = 288
    Width = 569
    Height = 217
    Cursor = crArrow
    Color = clBtnFace
    Lines.Strings = (
      
        'Afin de personnaliser votre exp'#233'rience de jeu, il vous est possi' +
        'ble de param'#233'trer vos parties et d'#39'enregistrer ces '
      'param'#232'tres dans des "profils".'
      
        'La premi'#232're fois que vous jouerez, vous serez amen'#233' '#224' param'#233'trer' +
        ' votre partie.'
      'Ces param'#232'tres comptent :'
      #8226' le nombre maximal de points de vie d'#8217'un joueur,'
      #8226' le nombre maximal de points d'#8217#233'nergie d'#8217'un joueur,'
      
        #8226' les d'#233'g'#226'ts minimaux et maximaux caus'#233's lorsqu'#39'un coup '#171' porte ' +
        #187','
      #8226' le coefficient d'#8217'un coup critique,'
      #8226' la dur'#233'e maximale d'#39'un tour,'
      
        #8226' les points de vie gagn'#233's '#224' chaque tour si on n'#8217'a pas '#233't'#233' touch' +
        #233','
      #8226' le nombre de points d'#8217#233'nergie d'#233'pens'#233's pour faire une action,'
      
        #8226' le nombre de points d'#8217#233'nergie bonus quand une action est r'#233'uss' +
        'ie,'
      #8226' le nombre de points d'#8217#233'nergie d'#233'pens'#233's pour bloquer.'
      ''
      
        'Une fois param'#233'tr'#233', il suffit d'#39'enregistrer le profil pour pouvo' +
        'ir le r'#233'utiliser ult'#233'rieurement et jouer avec les '
      'param'#232'tre de celui-ci.')
    ReadOnly = True
    TabOrder = 2
  end
end
