#include "TOTVS.CH"

User function Desafio3

Local nCont := 1
Local cResult := ""



While nCont <= 10

    If nCont == 10
        cResult := cResult + "10"
        nCont ++
    Else

    cResult := cResult + CValToChar(nCont) + ","
    nCont ++

    Endif

Enddo


Alert(cResult)

Return


