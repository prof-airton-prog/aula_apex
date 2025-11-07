public with sharing class SOSL1 {

    public static List<List<sObject>> buscaStrings(String valor)
    {
        List<List<sObject>> resultados = [FIND :valor IN NAME FIELDS RETURNING Account(Name, Phone)];
        return resultados;
    }
}

// String inicial = 'An*';
// List<String> testeCaracteres = inicial.split('');
// Integer tamanhoInicialSizeList = testeCaracteres.size();
// testeCaracteres.remove(tamanhoInicialSizeList-1);
// String novoInicial = '';
// for(String s:testeCaracteres){
//     novoInicial += s;
// }

// List<List<sObject>> retorno = SOSL1.buscaStrings(inicial);
// Integer contador = 0;
// for(List<sObject> lista :retorno){
//     // System.debug(lista);
//     for(sObject listaInterna : lista){
//         String nome = (String)listaInterna.get('Name');
//         System.debug(nome);
//         if(nome.capitalize().startsWith(novoInicial.toUpperCase()))
//         {
//             contador++;
//             System.debug('Nome: '+listaInterna.get('Name') + ' - ' + 'Telefone: ' + listaInterna.get('Phone') );
//         }
//     }
// }
// System.debug('Itens da lista interna: '+contador);