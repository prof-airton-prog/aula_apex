public with sharing class SOSL1 {

    public static List<List<sObject>> buscaStrings(String valor)
    {
        List<List<sObject>> resultados = [FIND :valor IN NAME FIELDS RETURNING Account(Name, Phone)];
        return resultados;
    }
}

String inicial = 'Andr*';
// List<String> testeCaracteres = inicial.split('');
// Integer tamanhoInicialSizeList = testeCaracteres.size();
// testeCaracteres.remove(tamanhoInicialSizeList-1);
// String novoInicial = '';
// for(String s:testeCaracteres){
//     novoInicial += s;
// }
inicial = inicial.substring(0, inicial.length() - 1);

List<List<sObject>> retorno = SOSL1.buscaStrings(inicial);
Integer contador = 0;
for(List<sObject> lista :retorno){
    // System.debug(lista);
    for(sObject listaInterna : lista){
        String nome = (String)listaInterna.get('Name');

        inicial = inicial.capitalize();
        nome = nome.capitalize();

        if(nome.startsWith(inicial))
        {
            contador++;
            System.debug('Nome: '+listaInterna.get('Name') + ' - ' + 'Telefone: ' + listaInterna.get('Phone') );
        }
    }
}
System.debug('Itens da lista interna: '+contador);
