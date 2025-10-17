public with sharing class BuscaIncludes {
}

// //IN: BUSCA EM CAMPOS QUE POSSUI APENAS UM VALOR ARMAZENADO (GUARDA APENAS 1 VALOR)
// List<String> estados = new List<String>{'CA', 'NY'};
// // Consulta SOQL usando a variável de lista
// List<Account> contas = [SELECT Name, BillingState FROM Account WHERE BillingState IN :estados];

// for (Account acc : contas) {
//     System.debug('Nome da conta: ' + acc.Name + ', Estado: ' + acc.BillingState);
// }


// //INCLUDE: BUSCA EM CAMPOS PICKLIST MULTISELECT
// List<String> ufsDesejadas = new List<String>{'MG','RJ'};
//     System.debug (ufsDesejadas);
// List<Filial__c> filiais = [SELECT Id, Name, UF__c FROM Filial__c WHERE UF__c INCLUDES ('SP;MT')];
// for(Filial__c fi:filiais){
//     System.debug(fi.Name+' - '+fi.UF__c);
// }



// BuscaIncludes bi = new BuscaIncludes();
// bi.buscaPorInclude();





AggregateResult[] groupResults = [SELECT AccountId, SUM(Amount), AVG(Amount), 
    MAX(Amount), MIN(Amount), COUNT(Id) FROM Opportunity GROUP BY AccountId HAVING SUM(Amount) > 0];
    System.debug(groupResults);
    List<Id> nomesContas = new List<Id>();
    for(AggregateResult ar:groupResults){
        nomesContas.add((Id)ar.get('AccountId'));
        System.debug(ar.get('AccountId') + ' - ' + ar.get('expr0'));
    }
    for(Account ac:[SELECT Name FROM Account WHERE Id IN :nomesContas]){
        System.debug(ac.Name);
    }

AggregateResult[] groupResults = [SELECT AccountId, SUM(Amount), AVG(Amount), 
    MAX(Amount), MIN(Amount), COUNT(Id) FROM Opportunity GROUP BY AccountId HAVING AccountId = '001bm000011zYBpAAM'];
    System.debug(groupResults);
    for(AggregateResult ar:groupResults){
        System.debug(ar.get('AccountId') + ' - ' + ar.get('expr0'));
    }