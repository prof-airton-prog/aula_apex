public with sharing class ClasseDatabase {

    public static Boolean gravaRegistro(Account conta){
        Database.SaveResult resultado = Database.insert(conta, false);
        System.debug(resultado);
        return resultado.isSuccess();
    }

        public static Boolean gravaRegistro(Opportunity oportunidade){
        Database.SaveResult resultado = Database.insert(oportunidade, false);
        System.debug(resultado);
        return resultado.isSuccess();
    }
}


// Boolean res = ClasseDatabase.gravaRegistro(new Account(Phone='1125636987'));
// System.debug(res?'Gravado com sucesso':'Erro ao gravar');
