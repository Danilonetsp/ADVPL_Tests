#include "TOTVS.CH"

User Function Desafio6()
  // Cria di�logo
  Local oDlg := MSDialog():New(10,10,700,700,'Exemplo MSDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
  // Ativa di�logo centralizado
  oDlg:Activate(,,,.F.,{||msgstop('Validou!!!'),.T.},,{||msgstop('Iniciando, ...?')} )

// Cria Fonte para visualiza��o
 oFont := TFont():New('Verdana',,-12,.T.)
  
 // Usando o m�todo New
 oSay:= Desafio6():New(01,01,{||'Texto para exibi��o I'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
   
 // M�todos
 oSay:CtrlRefresh()
 
 oSay:SetText( "Teste de Texto 1234567 " )
 
 // Propriedades
 oSay:lTransparent = .T.
 
 oSay:lWordWrap = .F.
 
ACTIVATE DIALOG oDlg CENTERED 





Return