#include "TOTVS.CH"

User function Desafio4

Local nUm := 1
Local nDois := 1
Local nResult := 0


While nUm <= 9

    While nDois <= 10
        nResult := nUm*nDois
        ConOut(cValToChar(nUm) + "x" + cValToChar(nDois) + " = " + cValToChar(nResult))
        nDois ++
    Enddo
    
    nUm ++
    nDois := 1

Enddo

Alert("Resultado no console")

Return
