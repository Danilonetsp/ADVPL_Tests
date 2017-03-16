#include "TOTVS.CH"

User function Desafio2

Local nCont
Local nCont2 := 1
Local cQuant
Local cAsterisco := "*"

cQuant := PegaDado("Informe a quantidade de asteriscos:")

For nCont := 1 to Val(cQuant) Step 1
    ConOut(cAsterisco)
    cAsterisco := cAsterisco + "*"
Next

For nCont := Val(cQuant)-1 to 1 Step -1
    ConOut(Replicate ("*",nCont))
Next

Alert("Resultado no console")

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
