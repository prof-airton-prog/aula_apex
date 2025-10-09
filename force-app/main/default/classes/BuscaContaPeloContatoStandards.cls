// public with sharing class BuscaContaPeloContatoStandards {
//     public static void buscaContaPorFilhoStds(Id idDaConta){
//         List<Contact> contatos = [SELECT Name, Account.Name FROM Contact WHERE Account.Id = :idDaConta];
//         System.debug(contatos);
//     }
// }

// BuscaContaPeloContatoStandards.buscaContaPorFilhoStds('001bm000011zYBrAAM');


public with sharing class BuscaContaPeloContatoStandards {
    public static void buscaContaPorFilhoStds(String phoneDaConta){
        List<Contact> contatos = [SELECT Name, Account.Name FROM Contact WHERE Account.Phone = :phoneDaConta];
        System.debug(contatos);
    }
}

// BuscaContaPeloContatoStandards.buscaContaPorFilhoStds('(212) 842-5500');