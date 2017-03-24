#include "TOTVS.CH"
 
User Function TGetTypes()
  Local cGet1 := "Digite o nome..." // Variavel do tipo caracter
  Local cGet2 := "Digite a idade..." // Variavel do tipo caracter
  Local lHasButton := .T.
 
  DEFINE MSDIALOG oDlg TITLE "Picture test" FROM 000, 000  TO 500, 500 COLORS 0, 16777215 PIXEL
 
oGet1 := TGet():New( 005, 009, { | u | If( PCount() == 0, cGet1, cGet1 := u ) },oDlg, 060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet1",,,,lHasButton  )

oGet2 := TGet():New( 020, 009, { | u | If( PCount() == 0, cGet2, cGet2 := u ) },oDlg, 060, 010, "!@",, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"cGet2",,,,lHasButton  )
 
  ACTIVATE MSDIALOG oDlg CENTERED
Return