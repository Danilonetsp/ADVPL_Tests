#include "TOTVS.CH"

User function Desafio2

Local nContL
Local nContL2 := 1
Local nContC
Local cQuant
Local cAsterisco

cAsterisco := "*"
cQuant := PegaDado("Informe a quantidade de asteriscos:")

For nContL := 1 to Val(cQuant) Step 1

ConOut(cAsterisco)
cAsterisco := cAsterisco + "*"

Next

cAsterisco := ""


For nContL := Val(cQuant) to nContL2 Step -1

cAsterisco := cAsterisco + "A"
ConOut(cAsterisco)

Next



Alert("Olhe o console!")

Return

Static Function PegaDado(cTit)

Local xRet
Local oTGet

DEFINE DIALOG oDlg TITLE cTit FROM 180,180 TO 250,450 PIXEL

xRet := Space(50)
oTGet := TGet():New( 01,01,bSetGet(xRet),oDlg,096,009,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,xRet,,,, )
oTButton := TButton():New( 015, 01, "OK",oDlg,{||oDlg:End()}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )

ACTIVATE DIALOG oDlg CENTERED

Return xRet