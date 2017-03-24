#include "TOTVS.CH"

User Function Desafio6()
  // Cria diálogo
  Local oDlg := MSDialog():New(10,10,700,700,'Exemplo MSDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
  // Ativa diálogo centralizado
  oDlg:Activate(,,,.F.,{||msgstop('Validou!!!'),.T.},,{||msgstop('Iniciando, ...?')} )

// Cria Fonte para visualização
 oFont := TFont():New('Verdana',,-12,.T.)
  
 // Usando o método New
 oSay:= Desafio6():New(01,01,{||'Texto para exibição I'},oDlg,,oFont,,,,.T.,CLR_RED,CLR_WHITE,200,20)
   
 // Métodos
 oSay:CtrlRefresh()
 
 oSay:SetText( "Teste de Texto 1234567 " )
 
 // Propriedades
 oSay:lTransparent = .T.
 
 oSay:lWordWrap = .F.
 
ACTIVATE DIALOG oDlg CENTERED 





Return