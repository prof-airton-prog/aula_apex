public with sharing class SOSL3 {
    public static List<List<sObject>> buscaDados(Decimal montante){
        List<List<sObject>> resultados = [FIND '*oil*' IN ALL FIELDS RETURNING Account(Name, Phone), Contact(FirstName), Opportunity(Name, Amount WHERE Amount > :montante)];
        return resultados;
    }

    public static String pegaType(sObject sobj){
        if(sobj == null) return '';
        return sobj.getSObjectType().getDescribe().getName();
    }
}

// Decimal montante = 150000;

// for(List<sObject> lista : SOSL3.buscaDados(montante)){
//     for(sObject objetoDentroDaLista : lista){
//         switch on SOSL3.pegaType(objetoDentroDaLista) {
//             when 'Account' {
//                 Account a = (Account)objetoDentroDaLista;
//                 System.debug(a.Name);
//             }
            
//             when 'Contact' {
//                 Contact c = (Contact)objetoDentroDaLista;
//                 System.debug(c.FirstName);
//             }

//             when 'Opportunity' {
//                 Opportunity o = (Opportunity)objetoDentroDaLista;
//                 System.debug(o.Name + ' - ' + o.Amount);
//             }
//         }
//     }
// }





// for(sObject ac:contas){
//     Account a = (Account)ac;
//     System.debug(a.Name);
// }
// for(sObject co:contatos){
//     Contact c = (Contact)co;
//     System.debug(c.FirstName);
// }
// for(sObject op:oportunidades){
//     Opportunity o = (Opportunity)op;
//     System.debug(o.Name + ' - ' + o.Amount);
// }

// String company = 'Un?ted* OR Coca*';
// List<List<sObject>> listas = [FIND :company IN NAME FIELDS RETURNING Account(Name, Id ORDER BY Name ASC)];// LIMIT 2];
// for(List<sObject> listasInternas:listas){
//     for(sObject contas:listasInternas){
//         System.debug(contas);
//     }
// }

//Wildcards: * ou ?