trigger TipoDeOperacao on Opportunity (before insert, before update, after insert, after update) {
//Trigger operation pode ser 
//BEFORE_INSERT, BEFORE_UPDATE, AFTER_INSERT, AFTER_UPDATE, BEFORE_DELETE, AFTER_DELETE, AFTER_UNDELETE
    // if(Trigger.operationType == System.TriggerOperation.BEFORE_INSERT){
    //     System.debug('Rodou before insert pelo trigger operation');
    // }
    // else if(Trigger.operationType == System.TriggerOperation.AFTER_DELETE){
    //     System.debug('Rodou after delete pelo trigger operation');
    // }

    // switch on Trigger.operationType {
    //     when BEFORE_INSERT {
    //         System.debug('Rodou before insert pelo trigger operation: ' + System.now().getTime());
    //     }
    //     when AFTER_INSERT {
    //         System.debug('Rodou after insert pelo trigger operation: ' + System.now().getTime());
    //     }
    // }

    if(Trigger.operationType == System.TriggerOperation.BEFORE_INSERT){
        System.debug('Total de contas inseridas: ' + Trigger.size);
    }
}

// List<Opportunity> listaOp = new List<Opportunity>();
// for(Integer i=0;i<=10;i++){
//     Opportunity op = new Opportunity();
//     op.Name = 'Teste ' + i;
//     op.CloseDate = Date.today();
//     op.StageName = 'Prospecting';
//     listaOp.add(op);
// }

// try{
//     insert listaOp;
// }catch(DMLException e){
//     System.debug('Erro: '+e.getMessage());
// }