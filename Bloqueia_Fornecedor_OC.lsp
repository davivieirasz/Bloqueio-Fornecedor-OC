@==============================================@
@ Desenvolvido por Davi Vieira                 @
@ Data: 08/09/2025                             @
@ Bloqueia Fornecedor para geração de OC       @
@ Identificador de regra: CPR-000CONIT03       @                                     
@==============================================@

Definir Numero nCodFor;
Definir Numero nCodEmp;
Definir Numero nCodFil;
Definir Alfa aCodFor;
Definir Alfa aMensagem;

nCodFor = E420OCP.CodFor;
nCodEmp = E420OCP.CodEmp;
nCodFil = E420OCP.CodFil;

IntParaAlfa(nCodFor, aCodFor);
aMensagem = "Fornecedor " + aCodFor + " Bloqueado.";
    
Se((nCodFor = 34) e (nCodEmp = 9999) e (nCodFil = 1))
      {
        GeraLog(aMensagem);
        Cancel;
      };