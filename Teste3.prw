#include "TOTVS.CH"
 
User Function TSay()
 DEFINE DIALOG oDlg TITLE "Exemplo TSay" FROM 180,180 TO 550,700 PIXEL
  
 // Cria Fonte para visualiza��o
 oFont := TFont():New('Verdana',,-12,.T.)
  
 // Usando o m�todo New
 //oSay1:= TSay():New(01,01,{||'Texto para exibi��o I'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
   
 // Usando o m�todo Create
 oSay:= TSay():Create(oDlg,{||'Texto para exibi��o'},20,01,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
 
 // M�todos
 oSay:CtrlRefresh()
 oSay:SetText( "Teste de Texto 1234567" )
 
 // Propriedades
 oSay:lTransparent = .T.
 oSay:lWordWrap = .F.
 


ACTIVATE DIALOG oDlg CENTERED 

Return