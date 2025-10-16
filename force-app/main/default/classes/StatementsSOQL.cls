public with sharing class StatementsSOQL 
{
    public static void buscaContas(String qry)
    {
        String queryPrincipal = 'SELECT Name, billingState, BillingCity FROM Account';
        String personalizada = queryPrincipal + ' ' + qry;
        List<Account> contas = Database.query(personalizada);
        for(Account conta : contas)
        {
            System.debug(conta.Name + ' - ' + conta.billingState + ' - ' + conta.BillingCity);
        }
    }

    public static void buscaAggregate(String qry)
    {
        String queryPrincipal = 'SELECT AccountId, LeadSource, COUNT(Name) FROM Lead';
        String personalizada = queryPrincipal + ' ' + qry;
        //Quando utilizando GROUP BY, o retorno é um AggregateResult
        List<AggregateResult> leads = Database.query(personalizada);
        for(AggregateResult le : leads)
        {
            System.debug(le);
        }
    }

    public static List<AggregateResult> buscaAggregate2(String qry)
    {
        String queryPrincipal = 'SELECT AccountId, SUM(Amount), AVG(Amount), MAX(Amount), MIN(Amount), COUNT(Name) FROM Opportunity';
        String personalizada = queryPrincipal + ' ' + qry;
        //Quando utilizando GROUP BY, o retorno é um AggregateResult
        List<AggregateResult> oportunidades = Database.query(personalizada);
        return oportunidades;
    }
    
}


//ORDER BY [...FROM Account ORDER BY Name ASC] - Traz registros em ordem ascendente & DESC em ordem decrescente

// StatementsSOQL.buscaContas('ORDER BY Name DESC LIMIT 10');

//[SELECT Name FROM Account WHERE Name LIKE 'U%']
// String queryComplementar = 'WHERE Name LIKE \'U%\'';
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE Name LIKE \'%e%\' AND billingState = \'CA\'';
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE (Name LIKE \'%e%\' AND billingState = \'CA\') OR billingState = \'NY\'';
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE CreatedDate > 2025-08-01T00:00:01-03:00'; // > , < , >= , <=, = 
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE billingState  != null';
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE billingCity IN (\'San Francisco\', \'Austin\', \'Singapore\')'; //IN (Significa que esteja no conjunto passado como argumentos)
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE billingCity NOT IN (\'San Francisco\', \'Austin\', \'Singapore\')'; //IN (Significa que esteja no conjunto passado como argumentos)
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'WHERE id IN (SELECT AccountId FROM Opportunity)';
// StatementsSOQL.buscaContas(queryComplementar);

// String queryComplementar = 'GROUP BY AccountId';
// List<AggregateResult> agg = StatementsSOQL.buscaAggregate2(queryComplementar);
// for(AggregateResult ar:agg){
//     Id ident = (Id)(ar.get('AccountId'));
//     System.debug('Account Name: '+ [SELECT Name FROM Account WHERE Id = :ident LIMIT 1].Name);
//     System.debug('Soma dos montantes de oportunidades: ' + ar.get('expr0'));
//     System.debug('Média dos montantes de oportunidades: ' + ar.get('expr1'));
//     System.debug('Maior dos montantes de oportunidades: ' + ar.get('expr2'));
//     System.debug('Menor dos montantes de oportunidades: ' + ar.get('expr3'));
//     System.debug('Quantidade de oportunidades: ' + ar.get('expr4'));
// }