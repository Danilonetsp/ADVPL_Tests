#include "TOTVS.CH"

User function Desafio5

Local nCont := 0
Local cResult := ""
Local nPar := ""
Local nImpar := ""


While nCont <= 10
    cResult := ParOuImpar(nCont)
    If nCont == 10
        nPar := nPar + cValToChar(nCont)
    Endif
    If nCont == 9
        nImpar := nImpar + cValToChar(nCont)
    Endif

    If cResult == 0 .and. nCont != 10
        nPar := nPar + cValToChar(nCont) + ","
    ElseIf cResult == 1 .and. nCont != 9
        nImpar := nImpar + cValToChar(nCont) + ","
    Endif

    nCont ++
Enddo

Alert("Numeros pares: " + nPar + Chr(13) + Chr(10) + "Numeros impares: " + nImpar)

Static Function ParOuImpar(nNum)
    If Mod(nNum,2) == 0
        Return 0
    Else
        Return 1
    Endif

Return