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


Boolean res = ClasseDatabase.gravaRegistro(new Opportunity(Name='Oportunidade 1', StageName='Prospecting', CloseDate=Date.today()));
System.debug(res?'Gravado com sucesso':'Erro ao gravar');



// Database.SaveResult[getErrors=
// (
//     Database.Error
//     [
//         getFields=(Name);
//         getMessage=Required fields are missing: [Name];
//         getStatusCode=REQUIRED_FIELD_MISSING;
//     ]
// )
// ;getId=null
// ;isSuccess=false;]

// DataBase.SaveResult => sr
// DataBase.Error => er

// sr[0]
//     er[0] => //getFields
//     er[1] => //getMessage
//     er[2] => //getStatusCode
// sr[1] => //getId
// sr[2] => //isSuccess
