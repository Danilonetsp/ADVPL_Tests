#include "TOTVS.CH"
 
User Function TSay()
 DEFINE DIALOG oDlg TITLE "Exemplo TSay" FROM 180,180 TO 550,700 PIXEL
  
 // Cria Fonte para visualização
 oFont := TFont():New('Verdana',,-12,.T.)
  
 // Usando o método New
 //oSay1:= TSay():New(01,01,{||'Texto para exibição I'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
   
 // Usando o método Create
 oSay:= TSay():Create(oDlg,{||'Texto para exibição'},20,01,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
 
 // Métodos
 oSay:CtrlRefresh()
 oSay:SetText( "Teste de Texto 1234567" )
 
 // Propriedades
 oSay:lTransparent = .T.
 oSay:lWordWrap = .F.
 


ACTIVATE DIALOG oDlg CENTERED 

Return