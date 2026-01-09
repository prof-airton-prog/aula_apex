trigger TriggerOperationType on Opportunity (before insert, before update, after insert, after update, before delete, after delete, after undelete) {

    switch on Trigger.operationType {

        when BEFORE_INSERT {
            for(Opportunity o:Trigger.new){
                System.debug('Before Insert register: ' + o.Name);
            }
        }
        when BEFORE_UPDATE {
            for(Opportunity o:Trigger.new){
                System.debug('Before Update register: ' + Trigger.oldMap.get(o.Id).Name +' to '+ o.Name);
            }
        }
        when AFTER_INSERT {
            for(Opportunity o:Trigger.new){
                System.debug('After Insert register: '+ o.Name);
            }
        }
        when AFTER_UPDATE {
            for(Opportunity o:Trigger.new){
                System.debug('After Update register: ' + Trigger.oldMap.get(o.Id).Name +' to '+o.Name);
            }
        }
        when BEFORE_DELETE {
            for(Opportunity o:Trigger.new){
                System.debug('Before Delete: ' + Trigger.oldMap.get(o.Id).Name);
            }
        }
        when AFTER_DELETE {
            for(Opportunity o:Trigger.new){
                System.debug('After Delete: ' + Trigger.oldMap.get(o.Id).Name);
            }
        }
        when AFTER_UNDELETE {
            for(Opportunity o:Trigger.new){
                System.debug('After Undelete: ' + o.Name);
            }
        } 
    }
}

// Opportunity op = new Opportunity(
//     Name = 'Teste',
//     CloseDate = Date.today(),
//     StageName = 'Prospecting'
// )

// Savepoint sp = Database.setSavepoint();
// try{
//     insert op;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }




// Database.rollBack(sp);