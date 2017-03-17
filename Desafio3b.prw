#include "TOTVS.CH"

User function Desaf3b

Local nCont := 1
Local cResult := ""


While nCont <= 10
    
    cResult := cResult + CValToChar(nCont) + ","
    nCont ++

Enddo

cFinal := CortaV(cResult)

Alert(cResult)
Alert(cFinal)

Static function CortaV(cTxt)
    cTexto := SubStr(cTxt,1,20)
Return cTexto

Return
