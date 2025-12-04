public with sharing class Unir {
    public static Account buscaContaPrincipal(){
        return [SELECT Name, Phone, BillingState FROM Account WHERE Name != '%LTDA' AND Name LIKE 'Resmed%' LIMIT 1];
    }

    public static Account buscaContaDuplicada(){
        return [SELECT Name, Phone, BillingState FROM Account WHERE Name LIKE 'Resmed%LTDA' LIMIT 1];
    }

    public static void unirContas(Account p, Account d){
        try{
            merge p d;
        }catch(DmlException e){
            System.debug('Erro: '+e.getMessage());
        }
    }
}

// System.debug(Unir.buscaContaPrincipal() + ' - ' + Unir.buscaContaDuplicada());