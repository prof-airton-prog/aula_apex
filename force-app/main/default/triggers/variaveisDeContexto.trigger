trigger variaveisDeContexto on Account (before insert, after insert) {
    Datetime momentoDisparo = System.now();
    if(Trigger.isBefore){
        momentoDisparo = System.now();
        System.debug('Isso está ocorrendo antes da inserção! '+momentoDisparo.getTime());
    }else if(Trigger.isAfter){
        momentoDisparo = System.now();
        System.debug('Isso está ocorrendo depois da inserção! '+momentoDisparo.getTime());
    }
}

// Account a = new Account(Name='Hello World 2');
// try{
//     insert a;
// }catch(DMLException e){
//     System.debug('Erro: '+e.getMessage());
// }