#include "TOTVS.CH"

User Function Desaf6c() 

aDados := {}
aItem := {}

DEFINE DIALOG oDlg TITLE "Desafio 6" FROM 180,180 TO 550,700 PIXEL    


//LABELS INICIO
oFont := TFont():New("Verdana",,-12,.T.)

// Usando o método Create
oSay:= TSay():Create(oDlg,{||'Texto para exibição'},02,02,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
oSay2:= TSay():Create(oDlg,{||'Texto para exibição'},16,02,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
// Métodos
oSay:CtrlRefresh()
oSay:SetText("Nome:")
oSay2:CtrlRefresh()
oSay2:SetText("Idade:")

// Propriedades
oSay:lTransparent = .T.
oSay:lWordWrap = .F.
//LABELS FIM


//BOTOES INICIO
// Usando o New   
oTButton1 := TButton():New( 040, 004, "OK",oDlg,{||AADD(aItem,cGet1)}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )   
oTButton2 := TButton():New( 040, 047, "Cancelar",oDlg,{||oDlg:End()}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
oTButton3 := TButton():New( 055, 024, "Exibir Dados",oDlg,{||Alert(aItem[1])}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
//BOTOES FIM


//TEXTBOX INICIO
cGet1 := "Digite o nome..." // Variavel do tipo caracter
cGet2 := "Digite a idade..." // Variavel do tipo caracter
lHasButton := .T.
   
oGet1 := TGet():New( 001, 030, { | u | If( PCount() == 0, cGet1, cGet1 := u ) },oDlg, 060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet1",,,,lHasButton  )
oGet1:bSetGet   := {|u| if( PCount() > 0, cGet1 := u, cGet1 ) }        

oGet2 := TGet():New( 015, 030, { | u | If( PCount() == 0, cGet2, cGet2 := u ) },oDlg, 060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet2",,,,lHasButton  )
oGet2:bSetGet   := {|u| if( PCount() > 0, cGet2 := u, cGet2 ) }  
//TEXTBOX FIM


ACTIVATE DIALOG oDlg CENTERED

Return