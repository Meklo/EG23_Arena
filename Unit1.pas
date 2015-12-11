{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Samples.Spin, Vcl.Tabs, Data.DB,
  Bde.DBTables, Data.FMTBcd, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Unit2, Math;

type
  TMenu = class(TForm)
    lAttaqueDefense: TLabel;
    btnCombat: TButton;
    pnAttributsPartie: TPanel;
    lAttributsPartie: TLabel;
    lblTitreParametre: TLabel;
    checkProfil: TCheckBox;
    pnAttaqueDef: TPanel;
    lHpInitiaux: TLabel;
    seHpInitiaux: TSpinEdit;
    lEpInitiaux: TLabel;
    seEpInitiaux: TSpinEdit;
    lRegenHp: TLabel;
    seRegenHp: TSpinEdit;
    lTempsTour: TLabel;
    seTempsTour: TSpinEdit;
    reAideParams: TRichEdit;
    lDegMin: TLabel;
    seDegMin: TSpinEdit;
    lDegMax: TLabel;
    seDegMax: TSpinEdit;
    lCoeffCrit: TLabel;
    seCoeffCrit: TSpinEdit;
    lPeAction: TLabel;
    sePeAction: TSpinEdit;
    lPeBlocage: TLabel;
    sePeBlocage: TSpinEdit;
    lPeBonus: TLabel;
    sePeBonus: TSpinEdit;
    lblContext: TLabel;
    lActions: TLabel;
    pnActions: TPanel;
    imgJoueur: TImage;
    imgOrdinateur: TImage;

    PageControl1: TPageControl;
    tabAccueil: TTabSheet;
    tabParametre: TTabSheet;
    btnModifierProfil: TButton;
    btnAccueil: TButton;
    btnSupprimerProfil: TButton;
    listProfils: TListBox;
    lblAbout: TLabel;
    lblProfils: TLabel;
    tabCombat: TTabSheet;
    lTitre: TLabel;
    timerAnimation: TTimer;
    memoAccueil: TMemo;
    vueVieJoueur: TImage;
    lblPVJoueur: TLabel;
    vueEnergieJoueur: TImage;
    lblEnergieJoueur: TLabel;
    lblVersus: TLabel;
    VueVieOrdinateur: TImage;
    vueEnergieOrdinateur: TImage;
    lblPVOrdinateur: TLabel;
    lblEpOrdinateur: TLabel;
    timerAction: TTimer;
    btnBlocageHaut: TButton;
    btnBlocageCentre: TButton;
    btnBlocageBas: TButton;
    btnEsquiveHaut: TButton;
    btnConcentration: TButton;
    btnEsquiveBas: TButton;
    btnAttaqueHaut: TButton;
    btnAttaqueCentre: TButton;
    btnAttaqueBas: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
    Query1: TQuery;
    editNomProfil: TEdit;
    lblNomProfil: TLabel;
    lblTitreCombat: TLabel;
    btnlancerCombat: TButton;
    lblChrono: TLabel;
    btnQuitterCombat: TButton;
    lblActionOrdi: TLabel;
    imageBulle: TImage;
    imageBulleFun: TImage;
    btnPause: TButton;
    vueTempsRestant: TImage;
    lblFlyinJoueurPV: TLabel;
    timerFlyinData: TTimer;
    lblFlyinJoueurPE: TLabel;
    lblFlyinOrdiPE: TLabel;
    lblFlyinOrdiPV: TLabel;
    imgInfoCoutAction: TImage;
    imgInfoCoutBlocage: TImage;
    imgInfoDmgMax: TImage;
    imgInfoDmgMin: TImage;
    imgInfoCoefCrit: TImage;
    imgInfoEnergieBonus: TImage;
    imgInfoPVinitiaux: TImage;
    imgInfoPEinitiaux: TImage;
    imgInfoRegenPv: TImage;
    imgInfoTempsTour: TImage;
    btnRetourAccueil: TButton;
    lblFinCombat: TLabel;
    imgBotWin: TImage;
    btnAide: TButton;
    imgAccueil: TImage;


    //Mise à jour graphique de la liste de profil
    procedure majListeProfils();

    //Définition des variables à la création du formulaire
    procedure FormCreate(Sender: TObject);

    //Click sur le bouton "C'est parti" à l'accueil
    procedure btnAccueilClick(Sender: TObject);

    //Click sur le bouton "Combat" de l'interface paramètres
    procedure btnCombatClick(Sender: TObject);

    //Timer permettant de gérer l'animation des sprites des personnages
    procedure timerAnimationTimer(Sender: TObject);

    //Permet de stocker dans quel onglet se situait l'utilisateur
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);

    //Si l'utilisateur n'est pas autorisé à se rendre sur un onglet spéicifique, il est redirigé vers le dernier onglet où il se trouvait
    procedure PageControl1Change(Sender: TObject);

    //Fonction appelée au lancement d'un combat
    procedure processCombat();

    //Fonction initialisant les variables spécifique à la phase de combat
    procedure setVariablesCombat();

    //Fonction gérant l'action de l'ordinateur, la confrontation de  l'action du joueur et de l'ordinateur et l'affichage qui en dépend
    procedure actionOrdinateur();

    //Fonction appelée si l'utilisateur souhaite attaquer
    procedure attaque(joueur : integer; adversaire : integer);

     //Fonction appelée si l'utilisateur souhaite bloquer
    procedure blocage(joueur : integer; adversaire : integer);

     //Fonction appelée si l'utilisateur souhaite esquiver
    procedure esquive(joueur : integer; adversaire : integer);

    //Fonction mettant à jour l'affichage graphique de la barre de vie
    procedure majBarreVie(Image : TImage; joueurOrOrdinateur : boolean);

    //Fonction mettant à jour l'affichage d'une barre de progression avec une variable de type Single (timer)
    procedure majProgressBarSingle(Image : TImage; Color : TColor; Valeur : Single; ValeurInitial : Single);

    //Fonction mettant à jour l'affichage d'une barre de progression avec une variable de type Integer(barre de vie/energie)
    procedure majProgressBar(Image : TImage; Color : TColor; Valeur : integer; ValeurInitial : integer);

    //Timer gérant le temps restant au joueur pour sélectionner une action
    procedure timerActionTimer(Sender: TObject);

    //Fonction permettant d'infliger des dégats à un joueur
    procedure infligerDegat(joueurOrOrdinateur : boolean);

    //Fonction permettant de dépenser de l'énergie
    procedure depenserEnergie(joueurOrOrdinateur : boolean; montant : integer);

    //Fonction pour supprimer un profil de la BD
    procedure btnSupprimerProfilClick(Sender: TObject);

    //Fonction pour passer en phase de paramétrage avec les valeurs d'un profil existant
    procedure btnModifierProfilClick(Sender: TObject);

    //Fonction permettant d'afficher l'editBox pour nommer un profil dans la phase de paramétrage
    procedure checkProfilClick(Sender: TObject);

    //Fonction affichant la fenêtre modale d'aide
    procedure btnAideClick(Sender: TObject);

    //Fonction pour lancer le timer du combat une fois les paramètres définis
    procedure btnlancerCombatClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnBlocageHautClick(Sender: TObject);

    //Fonction pour quitter l'application
    procedure btnQuitterAccueilClick(Sender: TObject);

    //Fonction du bouton Quitter de l'interface de combat
    procedure btnQuitterCombatClick(Sender: TObject);

    //Fonction pour quitter un combat "proprement" (fin du combat/click du bouton quitter)
    procedure quitterCombat();

    //Fonction définissant une action du joueur
    procedure btnAttaqueCentreClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnBlocageCentreClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnBlocageBasClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnEsquiveHautClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnConcentrationClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnEsquiveBasClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnAttaqueHautClick(Sender: TObject);

    //Fonction définissant une action du joueur
    procedure btnAttaqueBasClick(Sender: TObject);

    //Fonction gérant le système de pause
    procedure btnPauseClick(Sender: TObject);

    //Timer permettant de gérer les textes flottants
    procedure timerFlyinDataTimer(Sender: TObject);

    //Fonction faisant varier la position d'un texte flottant jusqu'un certain point
    procedure flyinUp(lbl : TLabel; i : integer);

    //Fonction pour revenir à l'accueil une fois le combat finit
    procedure btnRetourAccueilClick(Sender: TObject);





  private

    //Variable définissant le nombre de pauses
    nbPause : integer;

    animJoueur : Single;
    animOrdinateur : Single;
    FPreviousPageIndex : integer;

    //Boolean servant à savoir si un combat est action pour pouvoir bloquer l'accès à certain onglet lors du combat
    combatActif : boolean;

    //Tableau stcckant l'action du joueur et de l'ordinateur
    actionArray  : Array[0..1] of Integer;

    //Boolean servant à savoir si l'utilisateur a ou non choisis une action
    actionSelec : boolean;

    joueurConcentre : boolean;
    ordinateurConcentre : boolean;

    vieJoueur : integer;
    vieOrdinateur : integer;
    energieJoueur : integer;
    energieOrdinateur : integer;


    //Variables de la page de paramètrage
    vieInitiale : integer;
    energieInitiale : integer;
    regenPv : integer;
    tempsTour : Single;
    tempsRestant : Single;

    dmgMin : integer;
    dmgMax : integer;
    coefCrit : integer;
    coutAction : integer;
    coutBlocage : integer;
    energieBonus : integer;

    //Position initial des textes flottants
    placesInitial : Array[0..3] of Integer;

    //Tableau stockant les labels représentant les textes flottants
    lblsFlyin : Array[0..3] of TLabel;

    //Pourcentage représentant l'état actuel du joueur
    etatJoueur : String;
    etatOrdinateur : String;


    profilSelected : boolean;
    tourJoueur : boolean;
    jeuxEnPause : boolean;

  public
    { Déclarations publiques }
  end;


var
  Menu: TMenu;

implementation

{$R *.dfm}
Function isBlocage(action: Integer) : boolean;
begin
  if((action = 1) or (action = 4) or (action = 7)) then
  begin
  Result := true;
  end
  else
  begin
    Result := false;
  end;
end;

Function isAttaque(action: Integer) : boolean;
begin
  if((action = 3) or (action = 6) or (action = 9)) then
   begin
  Result := true;
  end
  else
  begin
    Result := false;
  end;
end;

Function isEsquive(action: Integer) : boolean;
begin
  if((action = 8) or (action = 2)) then  begin
  Result := true;
  end
  else
  begin
    Result := false;
  end;
end;



procedure TMenu.FormCreate(Sender: TObject);
begin
  timerAction.Enabled := false;
  combatActif := false;
  PageControl1.ActivePage := tabAccueil;
  jeuxEnPause := true;
  actionSelec := false;

  joueurConcentre := false;
  ordinateurConcentre := false;

  profilSelected := false;
  tourJoueur := true;


  imageBulle.SendToBack;

  etatJoueur := '100';
  etatOrdinateur := '100';
  Table1.Active := true;
  majListeProfils();
end;





procedure TMenu.majListeProfils();
begin
    listProfils.Items.Clear;

    Query1.SQL.Clear();
    Query1.SQL.Add('select nom from profils.dbf');
    Query1.Open;
    Query1.First;
    while(not Query1.EOF)do begin
       listProfils.Items.Add(Query1['nom']);
       Query1.Next;
    end;
    Query1.Close;
end;

//Vérifier que l'onglet combat est/ou non disponible
procedure TMenu.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex=2) AND (combatActif = false)  then begin
    PageControl1.ActivePageIndex := FPreviousPageIndex;
    MessageDlg('Veuillez paramètrer votre partie ou sélectionner un profil avant de lancer un combat.', mtInformation,[mbOk], 0, mbOk);
  end;
  if (PageControl1.ActivePageIndex=1) AND (combatActif = true) then
  begin
      PageControl1.ActivePageIndex := FPreviousPageIndex;
      MessageDlg('Vous ne pouvez pas refaire la phase de paramétrage durant un combat.', mtInformation,[mbOk], 0, mbOk);
  end;
  if(PageControl1.ActivePageIndex=0) and (combatActif = true) then
  begin
        majListeProfils();
        jeuxEnPause := true;
  end;
  if (PageControl1.ActivePageIndex = 2) and (combatActif = true) then jeuxEnPause := false;


end;

//Stocker l'index de l'onglet précédent pour rediriger l'utilistateur en cas d'onglet interdit
procedure TMenu.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
   FPreviousPageIndex := PageControl1.ActivePageIndex;
end;

//Temps pour sélectionner une action
procedure TMenu.timerActionTimer(Sender: TObject);
begin
if(jeuxEnPause = false) then
begin

    majProgressBarSingle(vueTempsRestant,clSilver,tempsRestant, tempsTour);
    if vueTempsRestant.Visible = false then vueTempsRestant.Visible := true;


    if((vieJoueur = 0) or (vieOrdinateur = 0))then
    begin
      timerAction.Enabled := false;

    end;

    if(actionArray[0] <> -1) then
    begin
         lblChrono.Caption := 'Tour de l adversaire';
         tempsRestant := 0;
         actionOrdinateur();
    end;


    if(tempsRestant > 0) then
    begin
      tourJoueur := true;
      tempsRestant := tempsRestant - 0.1;

      lblChrono.Caption := FloatToStrF(tempsRestant, ffFixed, 16, 1);
      lblChrono.Alignment := taCenter;
    end
    else if((actionSelec = false)) then
    begin
      lblChrono.Caption := 'Tour de l adversaire';
      tourJoueur := false;
      actionArray[0] := 10;
    end;
end;

end;

//Animer les sprites des joueurs
procedure TMenu.timerAnimationTimer(Sender: TObject);
begin
     animJoueur := Random(30);
     animOrdinateur := Random(30);

     if(joueurConcentre =true) then
     begin
         imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\concentration.png');
         animJoueur := -1;
     end;
     if(ordinateurConcentre = true) then
     begin
          imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\concentration.png');
          animOrdinateur := -1;
     end;

     if((animJoueur < 10) and (animJoueur >=0))
     then
     begin
           imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatJoueur +'left.png');
     end;

     if(animJoueur >= 10) AND (animJoueur <= 20) then
     begin
           imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+etatJoueur+'face.png');
     end;

      if(animJoueur > 20)
     then
     begin
           imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+etatJoueur+'right.png');
     end;


     if((animOrdinateur < 10) and (animOrdinateur >= 0))
     then
     begin
          imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatOrdinateur +'left.png');
     end;

     if(animOrdinateur >= 10) AND (animOrdinateur <= 20) then
     begin
           imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+etatOrdinateur+'face.png');
     end;

      if(animOrdinateur > 20)
     then
     begin
          imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+etatOrdinateur+'right.png');
     end;
end;

procedure TMenu.timerFlyinDataTimer(Sender: TObject);
var lbl : TLabel;
var i : integer;
begin
      i := 0;
      for lbl in lblsFlyin do
      begin
        if lbl.Caption <> '' then flyinUp(lbl, i);
        i := i +1;
      end;


end;

procedure TMenu.flyinUp(lbl: TLabel; i : integer);
begin
    if ((placesInitial[i] - lblsFlyin[i].Top) < 150) then
    begin
      lblsFlyin[i].Visible := true;
      lblsFlyin[i].Top := lblsFlyin[i].Top -5;
    end
    else
    begin
      lblsFlyin[i].Visible := false;
      lblsFlyin[i].Top := placesInitial[i];
      lblsFlyin[i].Caption := '';
      lblsFlyin[i].Font.Size := 16;
    end;

end;

//Click sur l'onglet combat
procedure TMenu.btnAideClick(Sender: TObject);
begin
    Beep();
    Form2.ShowModal();
end;

procedure TMenu.btnAttaqueBasClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 9;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnAttaqueCentreClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 6;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnAttaqueHautClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 3;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnBlocageBasClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 7;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnBlocageCentreClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 4;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnBlocageHautClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 1;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

//Click sur l'onglet accueil
procedure TMenu.btnAccueilClick(Sender: TObject);
begin

      if(listProfils.ItemIndex <> -1) then
      begin

        Query1.SQL.Clear();
        Query1.SQL.Add('SELECT * FROM PROFILS.dbf WHERE nom = "' +listProfils.Items[listProfils.ItemIndex]+'";');
        Query1.Open;

        vieInitiale := Query1['pvinitiaux'];
        energieInitiale := Query1['peinitiaux'];
        regenPv := Query1['regenpv'];
        tempsTour := Query1['tempstour'];

        dmgMin := Query1['dmgmin'];
        dmgMax := Query1['dmgmax'];
        coefCrit := Query1['coefcrit'];
        coutAction := Query1['coutaction'];
        coutBlocage := Query1['coutblocag'];
        energieBonus := Query1['pebonus'];

        profilSelected := true;
        processCombat();
        PageControl1.ActivePage := tabCombat;
      end
      else
      begin
        PageControl1.ActivePage := tabParametre;
      end;
end;


procedure TMenu.btnCombatClick(Sender: TObject);
begin
    if(checkProfil.Checked) then
    begin

          if(editNomProfil.Text = '') then
          begin
                MessageDlg('Veuillez spécifier un nom pour ce profil.', mtInformation,[mbOk], 0, mbOk);
                Exit;
          end;


          Query1.SQL.Clear();
            Query1.SQL.Add('SELECT COUNT(*) AS ROWCOUNT FROM PROFILS.dbf WHERE nom = "' +editNomProfil.Text+'";');
            Query1.Open;

            if(StrToInt(Query1.FieldByName('ROWCOUNT').AsString) > 0) then
            begin
                  Query1.SQL.Clear();
                  Query1.SQL.Add('UPDATE PROFILS.dbf SET pvinitiaux='+IntToStr(seHpInitiaux.Value)+',peinitiaux ='+IntToStr(seEpInitiaux.Value)+',regenpv='+IntToStr(seRegenHp.Value)+',tempstour='+IntToStr(seTempsTour.Value)+',dmgmin='+IntToStr(seDegMin.Value)+',dmgmax='+IntToStr(seDegMax.Value)+',coefcrit='+IntToStr(seCoeffCrit.Value)+',coutaction='+IntToStr(sePeAction.Value)+',coutblocag='+IntToStr(sePeBlocage.Value)+',pebonus='+IntToStr(sePeBonus.Value)+'  WHERE nom = "' +editNomProfil.Text+'";');
                  Query1.ExecSQL;
                  MessageDlg('Profil mis à jour!', mtInformation,[mbOk], 0, mbOk);
            end
          else
          begin
                  Query1.SQL.Clear();
                  Query1.SQL.Add('INSERT INTO PROFILS.dbf(nom,pvinitiaux,peinitiaux, regenpv, tempstour, dmgmin, dmgmax, coefcrit, coutaction, coutblocag, pebonus) VALUES("'+editNomProfil.Text+'",'+IntToStr(seHpInitiaux.Value)+','+IntToStr(seEpInitiaux.Value)+','+IntToStr(seRegenHp.Value)+','+IntToStr(seTempsTour.Value)+','+IntToStr(seDegMin.Value)+','+IntToStr(seDegMax.Value)+','+IntToStr(seCoeffCrit.Value)+','+IntToStr(sePeAction.Value)+','+IntToStr(sePeBlocage.Value)+','+IntToStr(sePeBonus.Value)+')');
                  Query1.ExecSQL;
                  MessageDlg('Profil ajouté!', mtInformation,[mbOk], 0, mbOk);

          end;

      end;

    PageControl1.ActivePage := tabCombat;
    processCombat();
end;


procedure TMenu.btnConcentrationClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 5;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnEsquiveBasClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 8;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnEsquiveHautClick(Sender: TObject);
begin
    if((actionArray[0] = -1) and (jeuxEnPause = false)) then
    begin
      actionArray[0] := 2;
      actionSelec := true;
    end
    else
    begin
         Beep;
    end;
end;

procedure TMenu.btnlancerCombatClick(Sender: TObject);
begin
    imageBulleFun.Visible := false;
    btnlancerCombat.Visible := false;
    btnPause.Visible := true;


    jeuxEnPause := false;
    timerAction.Enabled := true;

    lblChrono.Caption := FloatToStr(tempsTour);
    tempsRestant := tempsTour;
    lblChrono.Visible := true;
end;

procedure TMenu.btnModifierProfilClick(Sender: TObject);
begin
  if(listProfils.ItemIndex <> -1) then
  begin
      if(combatActif = false)then
      begin
       Query1.SQL.Clear();
       Query1.SQL.Add('SELECT * FROM PROFILS.dbf WHERE nom = "' +listProfils.Items[listProfils.ItemIndex]+'";');
       Query1.Open;

       seHpInitiaux.Value := Query1['pvinitiaux'];
       sePeAction.Value := Query1['peinitiaux'];
       seRegenHp.Value := Query1['regenpv'];
       seTempsTour.Value := Query1['tempstour'];

       seDegMin.Value := Query1['dmgmin'];
       seDegMax.Value := Query1['dmgmax'];
       seCoeffCrit.Value := Query1['coefcrit'];
       sePeAction.Value := Query1['coutaction'];
       sePeBlocage.Value := Query1['coutblocag'];
       sePeBonus.Value := Query1['pebonus'];

       lblNomProfil.Visible := true;
       editNomProfil.Visible := true;

       checkProfil.Checked := true;
       editNomProfil.Text := Query1['nom'];

    PageControl1.ActivePage := tabParametre;
      end
      else
      begin
           MessageDlg('Vous ne pouvez pas modifier un profil en plein combat.', mtInformation,[mbOk], 0, mbOk);
      end;
  end;

end;

procedure TMenu.btnQuitterAccueilClick(Sender: TObject);
begin
      Application.Terminate;
end;

procedure TMenu.btnSupprimerProfilClick(Sender: TObject);
var
  buttonSelected : Integer;
begin
    if(listProfils.ItemIndex <> -1) then
    begin
         buttonSelected := MessageDlg('Etes vous sûr de vouloir supprimer ce profil ?',mtError, mbOKCancel, 0);
         if(buttonSelected = mrCancel) then
         begin
           Exit;
         end
         else
         begin
           Query1.SQL.Clear();
           Query1.SQL.Add('DELETE FROM PROFILS.dbf WHERE nom = "' +listProfils.Items[listProfils.ItemIndex]+'";');
           Query1.ExecSQL;
           majListeProfils();
         end;
    end;
end;

procedure TMenu.btnRetourAccueilClick(Sender: TObject);
begin
    quitterCombat();
end;

procedure TMenu.btnPauseClick(Sender: TObject);
begin
        if jeuxEnPause = true then
        begin
          jeuxEnPause := false;
          btnPause.Caption := 'Pause';
          Exit;
        end;

        if(nbPause >0) then
        begin
            jeuxEnPause := true;
            nbPause := nbPause -1;
            btnPause.Caption := 'Reprendre';
            if( nbPause >0) then MessageDlg('Il vous reste '+IntToStr(nbPause)+' pauses.', mtInformation,[mbOk], 0, mbOk);
            if( nbPause = 0) then MessageDlg('Vous n''avez plus de pauses.', mtInformation,[mbOk], 0, mbOk);

        end
        else if nbPause = 0 then MessageDlg('Vous n''avez plus de pauses.', mtInformation,[mbOk], 0, mbOk);


end;

procedure TMenu.btnQuitterCombatClick(Sender: TObject);
var
buttonSelected : integer;
begin
  buttonSelected := MessageDlg('Voulez vous vraiment quitter le combat ?',mtError, mbOKCancel, 0);


  if buttonSelected = mrOk then
  begin
        quitterCombat();
  end;


end;

procedure TMenu.quitterCombat;
begin
     imgBotWin.Visible := false;
     btnRetourAccueil.Visible := false;
     lblFinCombat.Visible := false;
     PageControl1.ActivePage := tabAccueil;
     lblChrono.Visible := false;

     btnlancerCombat.Visible := true;
     combatActif := false;
     btnAccueil.Enabled := true;
     timerAction.Enabled := false;
     btnPause.Visible := false;

     lblContext.Caption := '';
     majListeProfils();
end;

procedure TMenu.checkProfilClick(Sender: TObject);
begin
    if(checkProfil.Checked = true) then
    begin
        lblNomProfil.Visible := true;
        editNomProfil.Visible := true;
    end
    else
    begin
        lblNomProfil.Visible := false;
        editNomProfil.Visible := false;
    end;
end;

procedure TMenu.actionOrdinateur;
var
vieTempJoueur : integer;
vieTempOrdinateur : integer;

begin

if(energieOrdinateur < coutAction) then
begin
 actionArray[1] := 10 ;
 lblActionOrdi.Caption := 'FATIGUE';
end;

if(actionArray[1] = -1) then
begin
  actionArray[1] := Random(9)+1;

  Case actionArray[1] of
  1 : lblActionOrdi.Caption := 'BLOCAGE HAUT';
  2 : lblActionOrdi.Caption := 'ESQUIVE HAUTE';
  3 : lblActionOrdi.Caption := 'ATTAQUE HAUT';
  4 : lblActionOrdi.Caption := 'BLOCAGE CENTRE';
  5 : lblActionOrdi.Caption := 'CONCENTRATION';
  6 : lblActionOrdi.Caption := 'ATTAQUE CENTRE';
  7 : lblActionOrdi.Caption := 'BLOCAGE BAS';
  8 : lblActionOrdi.Caption := 'ESQUIVE BASSE';
  9 : lblActionOrdi.Caption := 'ATTAQUE BASSE';
  End;

end;

  vieTempJoueur := vieJoueur;
  vieTempOrdinateur := vieOrdinateur;


  if(actionArray[0] = 1 ) then
  begin
      blocage(actionArray[0], actionArray[1]);
  end;
  if(actionArray[0] = 2) then
  begin
        esquive(actionArray[0],actionArray[1]);
  end;
  if(actionArray[0] = 3) then
  begin
        attaque(actionArray[0],actionArray[1]);
  end;
  if(actionArray[0] = 4) then
  begin
        blocage(actionArray[0], actionArray[1]);
  end;
  if(actionArray[0] = 5) then
  begin
          if(isAttaque(actionArray[1])) then
         begin
              lblContext.Caption := 'Vous perdez votre concentration et l''adversaire vous inglige des dégats';
              infligerDegat(true);
              depenserEnergie(true, coutAction);
              depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;
         end
         else if(actionArray[1] = 5) then
         begin
              lblContext.Caption := 'Votre concentration réussie mais l''adversaire en a aussi profiter pour se concentrer!';
              joueurConcentre := true;
              ordinateurConcentre := true;

              depenserEnergie(true,coutAction);
              energieJoueur := energieJoueur + energieBonus;

              depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;
         end
         else if(isEsquive(actionArray[1]) = true) then
         begin
              lblContext.Caption := 'Votre concentration réussi alors que l''adversaire esquivait, profitez-en!';
              joueurConcentre := true;

              depenserEnergie(true,coutAction);
              energieJoueur := energieJoueur + energieBonus;

              depenserEnergie(false, coutAction);
         end
         else if(isBlocage(actionArray[1]) = true) then
         begin
              lblContext.Caption := 'Votre concentration réussi alors que l''adversaire bloquait, profitez-en!';
              joueurConcentre := true;
              depenserEnergie(true,coutAction);
              energieJoueur := energieJoueur + energieBonus;

              depenserEnergie(false, coutAction);
         end
         else
              begin
                   lblContext.Caption := 'L''adversaire n''a plus la force de continuer, vous vous concentrez avec succès';
                   joueurConcentre := true;
                   depenserEnergie(true,coutAction);
                   energieJoueur := energieJoueur + energieBonus;

     end;
  end;
  if(actionArray[0] = 6) then
  begin
         attaque(actionArray[0],actionArray[1]);
  end;
  if(actionArray[0] = 7) then
  begin
         blocage(actionArray[0], actionArray[1]);
  end;
  if(actionArray[0] = 8) then
  begin
         esquive(actionArray[0],actionArray[1]);
  end;
  if(actionArray[0] = 9) then
  begin
         attaque(actionArray[0],actionArray[1]);
  end;
    if((actionArray[0] = 10) or (coutAction > energieJoueur)) then
  begin
        if isAttaque(actionArray[1]) then
        begin
         infligerDegat(true);
         depenserEnergie(true,coutAction);

         depenserEnergie(false, coutAction);
         energieJoueur := energieJoueur + energieBonus;
         lblContext.Caption := 'Votre n''avez rien fait alors que l''adversaire attaquait, outch!';
        end
        else if isBlocage(actionArray[1]) then
        begin
         energieOrdinateur := energieOrdinateur + energieOrdinateur;
         lblContext.Caption := 'Votre n''avez rien fait alors que l''adversaire bloquait, un bonus d''énergie lui est accordé!';
        end
        else if isEsquive(actionArray[1]) then
        begin
         energieOrdinateur := energieOrdinateur + energieOrdinateur;
         lblContext.Caption := 'Votre n''avez rien fait alors que l''adversaire esquivait, un bonus d''énergie lui est accordé!';
        end
        else
        begin
            energieOrdinateur := energieOrdinateur + energieOrdinateur;
            ordinateurConcentre := true;
            lblContext.Caption := 'Votre n''avez rien fait alors que l''adversaire se concentrait, ça ne sent pas bon!';
        end;
  end;

  actionArray[0] := -1;
  actionArray[1] := -1;

  if(vieJoueur = vieTempJoueur) then
  begin
      vieJoueur := vieJoueur + regenPv;
      if(vieJoueur > vieInitiale) then
      begin
        vieJoueur := vieInitiale;
      end;
      lblFlyinJoueurPV.Caption := '+'+IntToStr(regenPv);
      lblFlyinJoueurPV.Font.Color := clGreen;

  end;

  if(vieOrdinateur = vieTempOrdinateur) then
  begin
   vieOrdinateur := vieOrdinateur+ regenPv;
   if(vieOrdinateur > vieInitiale) then
      begin
        vieOrdinateur := vieInitiale;
      end;
      lblFlyinOrdiPV.Caption := '+'+IntToStr(regenPv);
      lblFlyinOrdiPV.Font.Color := clGreen;

  end;

  if(vieJoueur = 0)then
  begin
      lblFinCombat.Visible := true;
      lblFinCombat.Caption := 'Vous avez perdu !';
       lblActionOrdi.Caption := '';
       imgBotWin.Picture.LoadFromFile(GetCurrentDir +'\Images\botwin.png');
       imgBotWin.Visible := true;
       jeuxEnPause := true;
       btnPause.Visible := false;
       btnRetourAccueil.Visible := true;

  end
  else if vieOrdinateur = 0 then
  begin
      lblFinCombat.Visible := true;
        lblFinCombat.Caption := 'Vous avez gagné!';
       lblActionOrdi.Caption := '';
       imageBulleFun.Picture.LoadFromFile(GetCurrentDir +'\Images\botloose.png');
       imageBulleFun.Visible := true;
       jeuxEnPause := true;
       btnPause.Visible := false;
       btnRetourAccueil.Visible := true;
  end;



  if(energieJoueur > energieInitiale) then energieJoueur := energieInitiale;
  if(energieOrdinateur > energieInitiale) then energieOrdinateur := energieInitiale;

  majBarreVie(vueVieJoueur, true);
   majBarreVie(VueVieOrdinateur, false);
  majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);
  majProgressBar(vueEnergieOrdinateur, clSkyBlue	, energieOrdinateur, energieInitiale);

  actionSelec := false;
  tempsRestant := tempsTour;
end;

procedure TMenu.attaque(joueur: Integer; adversaire: Integer);
begin
    if(isAttaque(adversaire) = true) then
         begin
              lblContext.Caption := 'Votre attaque inflige des dégats à l''adversaire, il vous inflige des dégats en retour!';
              depenserEnergie(true,coutAction);
              energieJoueur := energieJoueur + energieBonus;

              depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;

              infligerDegat(true);
              infligerDegat(false);
         end
    else if(actionArray[1] = 5) then
         begin
              lblContext.Caption := 'Vous attaquez et brisez par la même occasion la tentative de concentration de l''adversaire!';
              depenserEnergie(true,coutAction);
              energieJoueur := energieJoueur + energieBonus;

              depenserEnergie(false, coutAction);

              infligerDegat(false);
         end
    else if(isEsquive(adversaire) = true) then
         begin
              if(joueur = 3)then
              begin
                   if(adversaire = 8) then
                   begin
                     lblContext.Caption := 'L''adversaire esquive votre attaque!';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutAction);
                      energieOrdinateur := energieOrdinateur + energieBonus;

                   end
                   else
                   begin
                     lblContext.Caption := 'L''adversaire tente d''esquiver votre attaque mais échoue, vous lui infligez des dégâts';
                     depenserEnergie(true,coutAction);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);

                     infligerDegat(false);
                   end;
              end
              else if(joueur = 6) then
              begin
                   if(adversaire = 8) then
                   begin
                     lblContext.Caption := 'L''adversaire esquive votre attaque!';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;

                   end
                   else
                   begin
                     lblContext.Caption := 'L''adversaire esquive votre attaque!';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;

                   end;
              end
              else if (joueur = 9) then
              begin
                   if(adversaire = 8) then
                   begin
                     lblContext.Caption := 'L''adversaire tente d''esquiver votre attaque mais échoue, vous lui infligez des dégâts';
                     depenserEnergie(true,coutAction);
                      energieJoueur := energieJoueur + energieBonus;

                      depenserEnergie(false, coutAction);

                     infligerDegat(false);
                   end
                   else
                   begin
                     lblContext.Caption := 'L''adversaire esquive votre attaque!';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;
                   end;
              end;
         end
    else if(isBlocage(adversaire) = true) then
         begin
              if(joueur = 3) then
              begin
                     if(adversaire = 1) then
                   begin
                     lblContext.Caption := 'L''adversaire bloque votre attaque';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutBlocage);
              energieOrdinateur := energieOrdinateur + energieBonus;

                   end
                   else
                   begin
                     lblContext.Caption := 'L''adversaire tente de bloquer votre attaque mais échoue, vous lui infligez des dégâts';
                     infligerDegat(false);

                     depenserEnergie(false, coutBlocage);
                   end;
              end
              else if(joueur = 6) then
              begin
                   if(adversaire = 4) then
                   begin
                     lblContext.Caption := 'L''adversaire bloque votre attaque';
                     depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutBlocage);
              energieOrdinateur := energieOrdinateur + energieBonus;
                   end
                   else
                   begin
                     lblContext.Caption := 'L''adversaire tente de bloquer votre attaque mais échoue, vous lui infligez des dégâts';
                     infligerDegat(false);

                     depenserEnergie(true,coutAction);
                      energieJoueur := energieJoueur + energieBonus;

                      depenserEnergie(false, coutBlocage);
                   end;
              end
              else if(joueur = 9) then
              begin
                   if(adversaire = 7) then
                   begin
                       lblContext.Caption := 'L''adversaire bloque votre attaque';
                       depenserEnergie(true,coutAction);

                     depenserEnergie(false, coutBlocage);
              energieOrdinateur := energieOrdinateur + energieBonus;
                   end
                   else
                   begin
                       lblContext.Caption := 'L''adversaire tente de bloquer votre attaque mais échoue, vous lui infligez des dégâts';
                       infligerDegat(false);

                       depenserEnergie(true,coutAction);
                      energieJoueur := energieJoueur + energieBonus;

                      depenserEnergie(false, coutBlocage);
                   end;
              end;
    end
     else
              begin
                   lblContext.Caption := 'L''adversaire n''a plus la force de continuer, vous lui infligez des dégâts';
                   infligerDegat(false);
                   depenserEnergie(true,coutAction);
                   energieJoueur := energieJoueur + energieBonus;

     end;
end;

procedure TMenu.blocage(joueur: Integer; adversaire: Integer);
begin
     if(isBlocage(adversaire) = true) then
         begin
              lblContext.Caption := 'Vous bloquez et l''adversaire bloque, ce n''est pas très efficace!';
              depenserEnergie(true,coutBlocage);

              depenserEnergie(false, coutAction);
         end
    else if(actionArray[1] = 5) then
         begin
              lblContext.Caption := 'Vous bloquez alors que l''adversaire se concentre, attention!';
              depenserEnergie(true,coutBlocage);

              depenserEnergie(false, coutAction);
              energieOrdinateur := energieOrdinateur + energieBonus;
         end
    else if(isEsquive(adversaire) = true) then
         begin
              lblContext.Caption := 'Vous bloquez et l''adversaire esquive, ce n''est pas très efficace!';
              depenserEnergie(true,coutBlocage);

              depenserEnergie(false, coutAction);
         end
    else if(isAttaque(adversaire) = true) then
         begin
              if(joueur = 1) then
              begin
                     if(adversaire = 3) then
                   begin
                     lblContext.Caption := 'Vous bloquez le coup et ne perdez pas de vie';
                     depenserEnergie(true,coutBlocage);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);
                   end
                   else
                   begin
                     lblContext.Caption := 'Vous bloquez mais l''attaque de l''adversaire perce vos défenses';
                     infligerDegat(true);

                     depenserEnergie(true,coutBlocage);

                     depenserEnergie(false, coutAction);
                     energieOrdinateur := energieOrdinateur + energieBonus;
                   end;
              end
              else if(joueur = 4) then
              begin
                   if(adversaire = 6) then
                   begin
                     lblContext.Caption := 'Vous bloquez le coup et ne perdez pas de vie';
                     depenserEnergie(true,coutBlocage);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);
                   end
                   else
                   begin
                     lblContext.Caption := 'Vous bloquez mais l''attaque de l''adversaire perce vos défenses';
                     infligerDegat(true);
                     depenserEnergie(true,coutBlocage);

                     depenserEnergie(false, coutAction);
                     energieOrdinateur := energieOrdinateur + energieBonus;
                   end;
              end
              else if(joueur = 7) then
              begin
                   if(adversaire = 9) then
                   begin
                       lblContext.Caption := 'Vous bloquez le coup et ne perdez pas de vie';
                       depenserEnergie(true,coutBlocage);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);
                   end
                   else
                   begin
                       lblContext.Caption := 'Vous bloquez mais l''attaque de l''adversaire perce vos défenses';
                       infligerDegat(true);

                       depenserEnergie(true,coutBlocage);

                     depenserEnergie(false, coutAction);
                     energieOrdinateur := energieOrdinateur + energieBonus;
                   end;
              end;
    end
    else
      begin
                   lblContext.Caption := 'L''adversaire n''a plus la force de continuer, vous bloquez';
                   depenserEnergie(true,coutBlocage);
     end;
end;

procedure TMenu.esquive(joueur: Integer; adversaire: Integer);
begin
    if(isEsquive(adversaire) = true) then
         begin
              lblContext.Caption := 'Vous esquivez et l''adversaire esquive, ce n''est pas très efficace!';
               depenserEnergie(true,coutAction);

              depenserEnergie(false, coutAction);
         end
    else if(actionArray[1] = 5) then
         begin
              lblContext.Caption := 'Vous esquivez alors que l''adversaire se concentre, attention!';
               depenserEnergie(true,coutAction);


               depenserEnergie(false, coutAction);
               energieOrdinateur := energieOrdinateur + energieBonus;
         end
    else if(isBlocage(adversaire) = true) then
         begin
              lblContext.Caption := 'Vous esquivez alors que l''adversaire bloque, ce n''est pas très efficace';
               depenserEnergie(true,coutAction);
               depenserEnergie(false, coutBlocage);
         end
    else if(isAttaque(adversaire) = true) then
         begin
              if(joueur = 1) then
              begin
                    if(adversaire = 3) then
                   begin
                      lblContext.Caption := 'Vous esquivez mais l''attaque de l''adversaire parvient jusqu''à vous';
                      infligerDegat(true);
                      depenserEnergie(true,coutAction);


                     depenserEnergie(false, coutAction);
                     energieOrdinateur := energieOrdinateur + energieBonus;
                   end
                   else
                   begin
                     lblContext.Caption := 'Vous esquivez le coup et ne perdez pas de vie';
                      depenserEnergie(true,coutAction);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);
                   end;
              end
              else if(joueur = 8) then
              begin
                   if(adversaire = 9) then
                   begin
                     lblContext.Caption := 'Vous esquivez mais l''attaque de l''adversaire parvient jusqu''à vous';
                     infligerDegat(true);
                     depenserEnergie(true,coutAction);


                     depenserEnergie(false, coutAction);
                     energieOrdinateur := energieOrdinateur + energieBonus;
                   end
                   else
                   begin
                     lblContext.Caption := 'Vous esquivez le coup et ne perdez pas de vie';
                      depenserEnergie(true,coutAction);
                     energieJoueur := energieJoueur + energieBonus;

                     depenserEnergie(false, coutAction);
                   end;
              end;
    end
    else
              begin
                   lblContext.Caption := 'L''adversaire n''a plus la force de continuer, vous esquivez';
                   depenserEnergie(true,coutAction);
     end;
end;



procedure TMenu.setVariablesCombat;
var
i : integer;
begin
  imageBulleFun.Picture.LoadFromFile(GetCurrentDir +'\Images\doge.png');
  imageBulleFun.Visible := true;
  vueTempsRestant.Visible := false;
  timerFlyinData.Enabled := true;

  etatJoueur := '100';
  etatOrdinateur := '100';
  nbPause := 3;

  actionArray[0] := -1;
  actionArray[1] := -1;

  lblsFlyin[0] := lblFlyinJoueurPV;
  lblsFlyin[1] := lblFlyinOrdiPV;
  lblsFlyin[2] := lblFlyinJoueurPE;
  lblsFlyin[3] := lblFlyinOrdiPE;

  placesInitial[0] := lblFlyinJoueurPV.Top;
  placesInitial[1] := lblFlyinOrdiPV.Top;
  placesInitial[2] := lblFlyinJoueurPE.Top;
  placesInitial[3] := lblFlyinOrdiPE.Top;


  imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatJoueur +'left.png');
  imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatJoueur +'left.png');
  lblActionOrdi.Caption := '';

  if(profilSelected = false) then
  begin
        vieInitiale := seHpInitiaux.Value;
        energieInitiale := seEpInitiaux.Value;
        regenPv := seRegenHp.Value;
        tempsTour := seTempsTour.Value;

        dmgMin := seDegMin.Value;
        dmgMax := seDegMax.Value;
        coefCrit := seCoeffCrit.Value;
        coutAction := sePeAction.Value;
        coutBlocage := sePeBlocage.Value;
        energieBonus := sePeBonus.Value;
  end;

        vieJoueur := vieInitiale;
        vieOrdinateur := vieInitiale;

        energieJoueur := energieInitiale;
        energieOrdinateur := energieInitiale;

        timerAnimation.Enabled := true;
        lblPVJoueur.Caption := 'PV:' + ' ' + IntToStr(vieJoueur)+'/'+IntToStr(vieInitiale);
        lblPVOrdinateur.Caption := 'PV:' + ' ' + IntToStr(vieOrdinateur)+'/'+IntToStr(vieInitiale);

        lblEnergieJoueur.Caption := 'Energie:' + ' ' + IntToStr(energieJoueur)+'/'+IntToStr(energieInitiale);
        lblEpOrdinateur.Caption := 'Energie:' + ' ' + IntToStr(energieOrdinateur)+'/'+IntToStr(energieInitiale);

        profilSelected := false;
end;



procedure TMenu.processCombat;
begin
      btnAccueil.Enabled := false;
      combatActif := true;
      timerAction.Enabled := false;
      setVariablesCombat();

      majBarreVie(vueVieJoueur, true);
      majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);

      majBarreVie(VueVieOrdinateur, false);
      majProgressBar(vueEnergieOrdinateur, clSkyBlue	, energieOrdinateur, energieInitiale);
  

end;

procedure TMenu.majProgressBar(Image: TImage; Color: TColor; Valeur : integer; ValeurInitial : integer);
var
  progressVieJoueur : TRect;
  pourcentageAfficher : integer;
begin
  PatBlt(Image.Canvas.Handle,0,0,Image.ClientWidth ,Image.ClientHeight,WHITENEss);
  Image.Canvas.Brush.Style := bsClear;
  Image.Canvas.FillRect(Canvas.ClipRect);

  pourcentageAfficher := round((Valeur * 100 / ValeurInitial) * 250 / 100);

  Image.Canvas.Rectangle(0,0,251,31);
  progressVieJoueur := Rect(1,1,pourcentageAfficher,30);


  Image.Canvas.Brush.Color := Color;
  Image.Canvas.Brush.Style := bsSolid;



  Image.Canvas.FillRect(progressVieJoueur);

end;

procedure TMenu.majProgressBarSingle(Image: TImage; Color: TColor; Valeur : Single; ValeurInitial : Single);
var
  progressVieJoueur : TRect;
  pourcentageAfficher : integer;
begin
  PatBlt(Image.Canvas.Handle,0,0,Image.ClientWidth ,Image.ClientHeight,WHITENEss);
  Image.Canvas.Brush.Style := bsClear;
  Image.Canvas.FillRect(Canvas.ClipRect);

  pourcentageAfficher := round((Valeur * 100 / ValeurInitial) * 202 / 100);

  Image.Canvas.Rectangle(0,0,203,31);
  progressVieJoueur := Rect(1,1,pourcentageAfficher,30);


  Image.Canvas.Brush.Color := Color;
  Image.Canvas.Brush.Style := bsSolid;



  Image.Canvas.FillRect(progressVieJoueur);

end;


procedure TMenu.majBarreVie(Image: TImage; joueurOrOrdinateur: Boolean);
var
  pourcentageVie : integer;
begin
  if joueurOrOrdinateur then
  begin
    pourcentageVie := round(vieJoueur * 100 / vieInitiale);

    if pourcentageVie >= 75 then
    begin
        majProgressBar(Image, clGreen, vieJoueur, vieInitiale);
    end;
    if (pourcentageVie < 75) AND (pourcentageVie >= 25) then
    begin

      majProgressBar(Image, clYellow, vieJoueur, vieInitiale);
    end;
    if pourcentageVie < 25 then
    begin

        majProgressBar(Image, clRed, vieJoueur, vieInitiale);
    end;

    //Mise à jour etat pour l'animation
    if(pourcentageVie <= 80) and (pourcentageVie >60) then
        etatJoueur := '80';
    if(pourcentageVie <= 60) and (pourcentageVie >40) then
        etatJoueur := '60';
    if(pourcentageVie <= 40) and (pourcentageVie >20) then
        etatJoueur := '40';
    if(pourcentageVie <= 20) and (pourcentageVie >0) then
        etatJoueur := '20';
    if(pourcentageVie =0) then
    begin
         timerAnimation.Enabled := false;
         imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\0dead.png');
    end;
  end
  else
  begin
     pourcentageVie := round(vieOrdinateur * 100 / vieInitiale);
    if pourcentageVie >= 75 then
    begin
        majProgressBar(Image, clGreen, vieOrdinateur, vieInitiale);
    end;
    if (pourcentageVie < 75) AND (pourcentageVie >= 25) then
    begin

      majProgressBar(Image, clYellow, vieOrdinateur, vieInitiale);
    end;
    if pourcentageVie < 25 then
    begin

        majProgressBar(Image, clRed, vieOrdinateur, vieInitiale);
    end;

      //Mise à jour etat pour l'animation
    if(pourcentageVie <= 80) and (pourcentageVie >60) then
        etatOrdinateur := '80';
    if(pourcentageVie <= 60) and (pourcentageVie >40) then
        etatOrdinateur := '60';
    if(pourcentageVie <= 40) and (pourcentageVie >20) then
        etatOrdinateur := '40';
    if(pourcentageVie <= 20) and (pourcentageVie >0) then
        etatOrdinateur := '20';
        if(pourcentageVie =0) then
    begin
         timerAnimation.Enabled := false;
         imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\0dead.png');
    end;
  end;

        lblPVJoueur.Caption := 'PV:' + ' ' + IntToStr(vieJoueur)+'/'+IntToStr(vieInitiale);
        lblPVOrdinateur.Caption := 'PV:' + ' ' + IntToStr(vieOrdinateur)+'/'+IntToStr(vieInitiale);

        lblEnergieJoueur.Caption := 'Energie:' + ' ' + IntToStr(energieJoueur)+'/'+IntToStr(energieInitiale);
        lblEpOrdinateur.Caption := 'Energie:' + ' ' + IntToStr(energieOrdinateur)+'/'+IntToStr(energieInitiale);

end;




procedure TMenu.infligerDegat(joueurOrOrdinateur: Boolean);
var
montant : integer;
begin
  montant := RandomRange(dmgMin,dmgMax);

   if joueurOrOrdinateur then
   begin
        if(ordinateurConcentre) then
        begin
         vieJoueur := vieJoueur - (montant* coefCrit);
         ordinateurConcentre := false;
         lblFlyinJoueurPV.Font.Size := 72;
          lblFlyinJoueurPV.Caption := '-'+IntToStr(montant * coefCrit);
        lblFlyinJoueurPV.Font.Color := clRed;
        end
        else
        begin
           vieJoueur := vieJoueur - montant;
            lblFlyinJoueurPV.Caption := '-'+IntToStr(montant);
        lblFlyinJoueurPV.Font.Color := clRed;
        end;




        if vieJoueur < 0 then
          vieJoueur := 0;

      majBarreVie(vueVieJoueur, true);
      majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);
      majProgressBar(vueEnergieOrdinateur, clSkyBlue	, energieOrdinateur, energieInitiale);
   end
   else
   begin

        if(joueurConcentre) then
        begin
            vieOrdinateur := vieOrdinateur - (montant * coefCrit);
            joueurConcentre := false;
            lblFlyinOrdiPV.Font.Size := 72;
            lblFlyinOrdiPV.Caption := '-'+IntToStr(montant * coefCrit);
            lblFlyinOrdiPV.Font.Color := clRed;
        end
        else
        begin
            vieOrdinateur := vieOrdinateur - montant;

            lblFlyinOrdiPV.Caption := '-'+IntToStr(montant);
            lblFlyinOrdiPV.Font.Color := clRed;
        end;



        if vieOrdinateur < 0 then
          vieOrdinateur := 0;

      majBarreVie(VueVieOrdinateur, false);
      majProgressBar(vueEnergieOrdinateur, clSkyBlue	, energieOrdinateur, energieInitiale);
      majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);
   end;
end;

procedure TMenu.depenserEnergie(joueurOrOrdinateur: Boolean; montant: Integer);
begin

   if joueurOrOrdinateur then
   begin
        energieJoueur := energieJoueur - montant;
        if energieJoueur < 0 then
          energieJoueur := 0;


      majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);
   end
   else
   begin
        energieOrdinateur := energieOrdinateur - montant;
        if energieJoueur < 0 then
          energieJoueur := 0;



      majProgressBar(vueEnergieOrdinateur, clSkyBlue	, energieOrdinateur, energieInitiale);
   end;

   if energieJoueur < 0 then energieJoueur := 0;
   if energieOrdinateur < 0 then energieOrdinateur := 0


end;

end.

