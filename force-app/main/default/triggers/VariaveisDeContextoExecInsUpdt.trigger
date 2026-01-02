trigger VariaveisDeContextoExecInsUpdt on Contact (before insert, before update) {

    if (Trigger.isExecuting)
    {
        System.debug('Trigger está executando');
    }

    if (Trigger.isInsert)
    {
        System.debug('Trigger disparo por inserção no banco');
    }
    else if(Trigger.isUpdate)
    {
        System.debug('Trigger disparado por atualização no banco');
    }
}




// List<Contact> listaContatos = new List<Contact>();

// Contact c = new Contact();
// c.LastName = 'Fulano';
// Contact d = new Contact();
// d.LastName = 'Sicrano';
// Contact e = new Contact();
// e.LastName = 'Beltrano';
// e.Id = '003bm00000geI9LAAU';

//     listaContatos.add(c);
//     listaContatos.add(d);
//     listaContatos.add(e);

// try{
//     upsert listaContatos;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }