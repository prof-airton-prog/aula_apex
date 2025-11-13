public with sharing class BuscaContaPaiFilhoStandards {

    public static List<Account> buscaContasPaiFilho(String inicioNomeConta){
        List<Account> contasComFilhos = [SELECT Name, (SELECT Name FROM Contacts) 
            FROM Account WHERE Name LIKE :inicioNomeConta+'%'];
            
        return contasComFilhos;
    }
}
/*
List<Account> contas = BuscaContaPaiFilhoStandards.buscaContasPaiFilho('U');

for(Integer i=0;i<contas.size();i++){
    // System.debug(contas[i].Name);

    for(Integer j=0;j<contas[i].Contacts.size();j++){
        System.debug((contas[i].Name) + ' - '+contas[i].Contacts[j].Name);

    }
}
System.debug(contas[0].Contacts);*/