public with sharing class Excluir {

    public static Account buscaContaParaSerExcluida(){

        return [SELECT Name, Phone, BillingState FROM Account WHERE Name LIKE 'Resmed%' LIMIT 1];
    }

    public static List<Account> buscaContaParaUndelete(String algo){
        String algo2 = algo+'%';
        List<Account> contas = [SELECT Name, Phone, BillingState, Type, Industry, Site FROM Account WHERE Name LIKE :algo2 AND isDeleted=true ALL ROWS];
        System.debug('Contas para undelete: '+contas);
        return contas;
    }

    public static void deletaConta(Account conta){
        System.debug('Conta encontrada para ser excluída: '+conta.Name);
        try{
            delete conta;
            System.debug('Conta de id: '+conta.id+' excluída!');
        }catch(DmlException e){
            System.debug('Erro: '+e.getMessage());
        }
    }

    public static void undeleteAccount(String algo){
        List<Account> contas = buscaContaParaUndelete(algo);
        System.debug('Contas para undelete: '+contas);
        List<Account> contasParaUndeleteDefinidas = new List<Account>();
        for(Account conta:contas){
            if(conta.Name != null && conta.Name.contains(algo) || conta.Phone != null && conta.Phone.contains(algo) || conta.BillingState != null && conta.BillingState.contains(algo)){
                contasParaUndeleteDefinidas.add(conta);
            }
        }
        System.debug('Contas definidas para serem restauradas: '+contasParaUndeleteDefinidas);
        Database.UndeleteResult [] retornoDoUndelete = Database.undelete(contasParaUndeleteDefinidas, false);
        for(Database.UndeleteResult cadaRetornoDoUndelete:retornoDoUndelete){
            if(cadaRetornoDoUndelete.isSuccess()){
                System.debug('Conta restaurada com sucesso! ID: '+cadaRetornoDoUndelete.getId());
            }else{
                Database.Error[] erros = cadaRetornoDoUndelete.getErrors();
                // System.debug('Status Code: '+erros.getStatusCode());
                // System.debug('Message: '+erros.getMessage());
                // System.debug('Fields: '+erros.getFields());
                List<Account> contasUndeleteds = new List<Account>();
                for(Database.Error cadaErro:erros){
                    if(cadaErro.getMessage().contains('Entity is not in the recycle bin')){
                        System.debug('Provavelmente foi excluído da lixeira');
                    }
                    System.debug('Status Code: '+cadaErro.getStatusCode());
                    // System.debug('Message: '+cadaErro.getMessage());
                    System.debug('Fields: '+cadaErro.getFields());
                }
            }
        }
    }
}



//  Excluir.deletaConta(Excluir.buscaContaParaSerExcluida());

//  Excluir.undeleteAccount();

// System.debug(Excluir.buscaContaParaUndelete('Natura'));
// Excluir.undeleteAccount('Natura');

// Excluir.deletaConta(Excluir.buscaContaParaSerExcluida());

