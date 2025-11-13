public with sharing class PopulaMapByInstanceOf {
    public static List<String> lista = new List<String>();
    public static void popula(sObject cadaObj){
        Map<String, Object> mapa = cadaObj.getPopulatedFieldsAsMap(); //(getPopulatedFieldsAsMap()) gera um map, com o campo 
        //como chave (Id/Name, depende do que é retornado) e o valor contido no Campo de retorno da query.
        
        String tipo = (cadaObj instanceof Account)?'Conta':'Oportunidade';
        for(String campo:mapa.keySet()) {
            lista.add(tipo + ': Key (campo): ' + campo + ' - ' + 'Valor: ' + mapa.get(campo));
        }
    }
}