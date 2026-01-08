trigger OldMapNewMap on Account (before update) {
    for(Account ac:Trigger.new){
        Account oldAcc =  Trigger.oldMap.get(ac.Id);
        if(ac.Name != oldAcc.Name){
            System.debug('Nome da conta de Id '+ac.Id+' foi alterado de '+oldAcc.Name+' para '+ac.Name);
        }
    }
}

// String inicioSubst = 'Coke';
// BuscaContasParaTriggerHandler busca = new BuscaContasParaTriggerHandler(inicioSubst);
// List<Account> listaContas = busca.buscaContas();
// List<Account> novaListaEditada = new List<Account>();
// for(Account a:listaContas){
//     if(a.Name.contains(inicioSubst)){
//         a.Name = a.Name.replace(inicioSubst, 'Coca Cola');
//         novaListaEditada.add(a);
//     }
// }

// try{
//     // Savepoint sp = Database.setSavepoint();
//     update novaListaEditada;
//     // System.debug('Contas editadas com sucesso!');
//     // for(Account a:[SELECT Name FROM Account WHERE Name LIKE 'Coca%']){
//     //     System.debug(a.Name + ' - ' + a.Id);
//     // }
//     // Database.rollback(sp);
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }