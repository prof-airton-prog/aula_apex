trigger newMapTrigger on Contact (before insert, after undelete) {
    for(Contact c:Trigger.new){
        if(Trigger.isBefore){
            System.debug('Nome do contato inserido: ' + c.FirstName + ' ' + c.LastName);
        }
        else if(Trigger.isUndelete)
        {
            System.debug('Nome do contato restaurado: ' +  c.FirstName + ' ' + c.LastName);
        }
    }
}

// SavePoint sp = Database.setSavepoint();
// Contact c = new Contact(FirstName='Airton', LastName='Santos');
// try{
//     insert c;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }

// List<Contact> contasNaLixeira = [SELECT Id, Name, FirstName, LastName FROM Contact WHERE IsDeleted = true ALL ROWS];
// try{
//     undelete contasNaLixeira;
//     for(Contact ac:[SELECT Name, FirstName, LastName FROM Contact WHERE (LastName LIKE '%Fulano%' OR LastName LIKE '%Sicrano%')]){
//         System.debug('Prova de undeleted: ' + ac.LastName + ' - ' + ac.Id);
//     }
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }
// Database.rollback(sp);

