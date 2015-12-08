unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Samples.Spin, Vcl.Tabs, Data.DB,
  Bde.DBTables, Data.FMTBcd, Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Unit2;

type
  TMenu = class(TForm)
    tcMain: TTabControl;
    pnAccueil: TPanel;
    Image2: TImage;
    reTxtAccueil: TRichEdit;
    lProfils: TLabel;
    lbxProfils: TListBox;
    btnEditProfil: TButton;
    btnSupprProfil: TButton;
    btnStart: TButton;
    lCredits: TLabel;
    pnParametres: TPanel;
    lAttaqueDefense: TLabel;
    btnCombat: TButton;
    pnAttributsPartie: TPanel;
    lAttributsPartie: TLabel;
    Label2: TLabel;
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
    pnCombat: TPanel;
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
    Label5: TLabel;
    timerAnimation: TTimer;
    btnAide: TButton;
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
    btnPause: TButton;
    btnQuitterAccueil: TButton;
    lblActionOrdi: TLabel;


    procedure majListeProfils();
    procedure FormCreate(Sender: TObject);
    procedure btnAccueilClick(Sender: TObject);
    procedure btnCombatClick(Sender: TObject);
    procedure timerAnimationTimer(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);

    procedure processCombat();
    procedure setVariablesCombat();
    procedure actionOrdinateur();

    procedure majBarreVie(Image : TImage; joueurOrOrdinateur : boolean);
    procedure majProgressBar(Image : TImage; Color : TColor; Valeur : integer; ValeurInitial : integer);
    procedure timerActionTimer(Sender: TObject);
    procedure infligerDegat(joueurOrOrdinateur : boolean; montant : integer);
    procedure btnSupprimerProfilClick(Sender: TObject);
    procedure btnModifierProfilClick(Sender: TObject);
    procedure checkProfilClick(Sender: TObject);
    procedure btnAideClick(Sender: TObject);
    procedure btnlancerCombatClick(Sender: TObject);
    procedure btnBlocageHautClick(Sender: TObject);
    procedure btnQuitterAccueilClick(Sender: TObject);
    procedure btnQuitterCombatClick(Sender: TObject);

    procedure quitterCombat();
    procedure btnPauseClick(Sender: TObject);
    procedure btnAttaqueCentreClick(Sender: TObject);



  private
    animJoueur : Single;
    animOrdinateur : Single;
    FPreviousPageIndex : integer;
    combatActif : boolean;
    actionArray  : Array[0..1] of Integer;

    vieJoueur : integer;
    vieOrdinateur : integer;
    energieJoueur : integer;
    energieOrdinateur : integer;


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


    etatJoueur : String;
    etatOrdinateur : String;


    profilSelected : boolean;
    tourJoueur : boolean;
    jeuxEnPause : boolean;
    nbPause : integer;

  public
    { Déclarations publiques }
  end;


var
  Menu: TMenu;

implementation

{$R *.dfm}

procedure TMenu.FormCreate(Sender: TObject);
begin
  timerAction.Enabled := false;
  combatActif := false;
  PageControl1.ActivePage := tabAccueil;
  jeuxEnPause := false;
  nbPause := 3;

  profilSelected := false;
  tourJoueur := true;

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
  if(PageControl1.ActivePageIndex=0) then
  begin
        majListeProfils();
  end;

end;

//Stocker l'index de l'onglet précédent pour rediriger l'utilistateur en cas d'onglet interdit
procedure TMenu.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
   FPreviousPageIndex := PageControl1.ActivePageIndex;
end;

//Temps pour sélectionner une action
procedure TMenu.timerActionTimer(Sender: TObject);
begin

    if(actionArray[0] <> -1) then
    begin
         actionOrdinateur();
    end;


    if(tempsRestant > 0) then
    begin
      tourJoueur := true;
      tempsRestant := tempsRestant - 0.1;
      lblChrono.Caption := FloatToStrF(tempsRestant, ffFixed, 16, 1)
    end
    else
    begin
      lblChrono.Caption := 'Tour de l adversaire';
      tourJoueur := false;
      actionArray[0] := 10;
    end;

end;

//Animer les sprites des joueurs
procedure TMenu.timerAnimationTimer(Sender: TObject);
begin
     animJoueur := Random(30);
     animOrdinateur := Random(30);

     if(animJoueur < 10)
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

          if(animOrdinateur < 10)
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

//Click sur l'onglet combat
procedure TMenu.btnAideClick(Sender: TObject);
begin
    Beep();
    Form2.ShowModal();
end;

procedure TMenu.btnAttaqueCentreClick(Sender: TObject);
begin
    if(actionArray[0] = -1) then
    begin
      actionArray[0] := 6;
    end;
end;

procedure TMenu.btnBlocageHautClick(Sender: TObject);
begin

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


procedure TMenu.btnlancerCombatClick(Sender: TObject);
begin
    btnlancerCombat.Visible := false;

    timerAction.Enabled := true;
    btnPause.Visible := true;
    lblChrono.Caption := FloatToStr(tempsTour);
    tempsRestant := tempsTour;
    lblChrono.Visible := true;
end;

procedure TMenu.btnModifierProfilClick(Sender: TObject);
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

procedure TMenu.btnPauseClick(Sender: TObject);

begin

      if(btnPause.Caption = 'Reprendre') then
      begin
         timerAction.Enabled := true;
        btnPause.Caption := 'Pause';
        jeuxEnPause := false;
        Exit;
      end;

      if(timerAction.Enabled = true and (nbPause > 0)) then
      begin
        jeuxEnPause := true;
        timerAction.Enabled := false;
        btnPause.Caption := 'Reprendre';
        nbPause := nbPause -1;


        if(nbPause>0) then
        begin
            MessageDlg('Il vous reste '+IntToStr(nbPause)+' pauses', mtInformation,[mbOk], 0, mbOk);
        end
        else
        begin
            MessageDlg('Vous n avez plus de pauses', mtInformation,[mbOk], 0, mbOk);
            Exit;
        end;
      end
      else
      begin
      MessageDlg('Vous n avez plus de pauses', mtInformation,[mbOk], 0, mbOk);
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
     PageControl1.ActivePage := tabAccueil;
     lblChrono.Visible := false;

     btnPause.Visible := false;
     btnlancerCombat.Visible := true;
     combatActif := false;
     btnAccueil.Enabled := true;
     timerAction.Enabled := false;
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
begin
  actionArray[1] := 6;

  Case actionArray[1] of
  6 : lblActionOrdi.Caption := 'L adversaire intente une attaque à l abdomen!';
  End;

end;

procedure TMenu.setVariablesCombat;
begin
  etatJoueur := '100';
  etatOrdinateur := '100';
  nbPause := 3;
  actionArray[0] := -1;
  actionArray[1] := -1;

  imgJoueur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatJoueur +'left.png');
  imgOrdinateur.Picture.LoadFromFile(GetCurrentDir +'\Images\'+ etatJoueur +'left.png');

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


        vieJoueur := vieInitiale;
        vieOrdinateur := vieInitiale;

        energieJoueur := energieInitiale;
        energieOrdinateur := energieInitiale;
  end;

        lblPVJoueur.Caption := 'PV:' + ' ' + IntToStr(vieJoueur)+'/'+IntToStr(vieInitiale);
        lblPVOrdinateur.Caption := 'PV:' + ' ' + IntToStr(vieOrdinateur)+'/'+IntToStr(vieInitiale);

        lblEnergieJoueur.Caption := 'Energie:' + ' ' + IntToStr(energieJoueur)+'/'+IntToStr(energieInitiale);
        lblEpOrdinateur.Caption := 'Energie:' + ' ' + IntToStr(energieOrdinateur)+'/'+IntToStr(energieInitiale);
end;



procedure TMenu.processCombat;
begin
      btnAccueil.Enabled := false;
      combatActif := true;
      timerAction.Enabled := false;
      setVariablesCombat();

      majProgressBar(vueVieJoueur, clGreen, vieJoueur, vieInitiale);
      majProgressBar(vueEnergieJoueur, clSkyBlue	, energieJoueur, energieInitiale);

      majProgressBar(VueVieOrdinateur, clGreen, vieOrdinateur, vieInitiale);
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

        lblPVJoueur.Caption := 'PV:' + ' ' + IntToStr(vieJoueur)+'/'+IntToStr(vieInitiale);
        lblPVOrdinateur.Caption := 'PV:' + ' ' + IntToStr(vieOrdinateur)+'/'+IntToStr(vieInitiale);

        lblEnergieJoueur.Caption := 'Energie:' + ' ' + IntToStr(energieJoueur)+'/'+IntToStr(energieInitiale);
        lblEpOrdinateur.Caption := 'Energie:' + ' ' + IntToStr(energieOrdinateur)+'/'+IntToStr(energieInitiale);

end;


procedure TMenu.infligerDegat(joueurOrOrdinateur: Boolean; montant: Integer);
begin
   if joueurOrOrdinateur then
   begin
        vieJoueur := vieJoueur - montant;
        if vieJoueur < 0 then
          vieJoueur := 0;
   end
   else
   begin
        vieOrdinateur := vieOrdinateur - montant;
        if vieOrdinateur < 0 then
          vieOrdinateur := 0;
   end;
end;
end.

