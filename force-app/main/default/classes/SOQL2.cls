public with sharing class SOQL2 {
    public static List<List<sObject>> buscaSOSL(String valor){
        List<List<sObject>> resultados = [FIND :valor IN ALL FIELDS RETURNING Account(Name, Phone), Opportunity(Name, Type)];
        return resultados;
    }
}



// List<List<sObject>> listona = SOQL2.buscaSOSL('Uni*');
// for(List<sObject> cadaLista:listona){
//     for(sObject cadaObjeto:cadaLista){
//         Map<String, Object> mapa = cadaObjeto.getPopulatedFieldsAsMap(); //(getPopulatedFieldsAsMap()) gera um map, com o campo 
//         //como chave (Id/Name, depende do que é retornado) e o valor contido no Campo de retorno da query.
//         for(String campo:mapa.keySet()){
//             System.debug('Key (campo): '+ campo + ' - ' + 'Valor: ' + mapa.get(campo));
//         }
//     }
// }


// List<List<sObject>> listona = SOQL2.buscaSOSL('Uni*');
// List<sObject> listaContas = listona[0];
// List<sObject> listaOportunidades = listona[1];

//     for(sObject cadaObjeto:listaContas){
//         Map<String, Object> mapa = cadaObjeto.getPopulatedFieldsAsMap(); //(getPopulatedFieldsAsMap()) gera um map, com o campo 
//         //como chave (Id/Name, depende do que é retornado) e o valor contido no Campo de retorno da query.
//         for(String campo:mapa.keySet()){
//             System.debug('Conta: ');
//             System.debug('Key (campo): '+ campo + ' - ' + 'Valor: ' + mapa.get(campo));
//         }
//     }

//     for(sObject cadaObjeto:listaOportunidades){
//         Map<String, Object> mapa = cadaObjeto.getPopulatedFieldsAsMap(); //(getPopulatedFieldsAsMap()) gera um map, com o campo 
//         //como chave (Id/Name, depende do que é retornado) e o valor contido no Campo de retorno da query.
//         for(String campo:mapa.keySet()){
//             System.debug('Oportunidade: ');
//             System.debug('Key (campo): '+ campo + ' - ' + 'Valor: ' + mapa.get(campo));
//         }
//     }

//Usando classe handler
// List<List<sObject>> listona = SOQL2.buscaSOSL('Uni*');
// for(List<sObject> cadaLista:listona){
//     for(sObject cadaObjeto:cadaLista){
//         PopulaMapByInstanceOf.popula(cadaObjeto);
//         }
//     for(String s:PopulaMapByInstanceOf.lista){
//         System.debug(s);
//     }
// }