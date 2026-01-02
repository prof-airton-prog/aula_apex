trigger VarContextisDelisBefisAftisUn on Account (before delete, after delete, after undelete) {
    if(Trigger.isDelete)
    {
        System.debug('Trigger foi disparado por exclusão');
    }

    if(Trigger.isBefore || Trigger.isAfter)
    {
        System.debug('Trigger foi executado ' + ((Trigger.isBefore)?'antes':'depois')  + ' da ' + ((Trigger.isUndelete)?'recuperação: ':'exclusão: ') + System.now().getTime());
    }

    if(Trigger.isUndelete)
    {
        System.debug('Trigger foi executado por recuperação de registro da lixeira no momento: ' + System.now().getTime());
    }
}

// Id idContaExcluida=null;
// Account contaASerExcluida = [SELECT Id, Name FROM Account WHERE Id = '001bm00001GtmdOAAR' LIMIT 1];
// Savepoint pontoDeSalvamento = Database.setSavepoint();
// try{
//     System.debug('Id conta excluída: ' + idContaExcluida);
//     System.debug('Momento de exclusão da conta que pode ser before ou after: ' + System.now().getTime());
//     delete contaASerExcluida;
//     idContaExcluida = contaASerExcluida.Id;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }
// System.debug('******************************************');
// // Account contaASerRecuperada = [SELECT Id, Name FROM Account WHERE Id = :idContaExcluida LIMIT 1];
// List<Account> contaASerRecuperada = [SELECT Id, Name FROM Account WHERE Id = '001bm00001GtmdOAAR' ALL ROWS];

// try{
//     undelete contaASerRecuperada[0];
//     System.debug('Momento de recuperação da conta que é after: ' + System.now().getTime());
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }
// Database.rollback(pontoDeSalvamento);

