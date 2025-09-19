public with sharing class Anonima {
    public Anonima() {

    }
}

/*
List<String> lista = new List<String>();
lista.add('abacate');
lista.add('manga');
lista.add('laranja');
lista.add('uva');
System.debug(lista[4]);




String [] lista = new List<String>();
lista.add('abacate');
lista.add('manga');
lista.add('laranja');
lista.add('uva');

System.debug(lista[0]);





//Array ou Vetor
String [] vetorDePalavras = new String[11];
vetorDePalavras[0] = 'abacate';
vetorDePalavras[1] = 'manga';
vetorDePalavras[3] = 'morango';
vetorDePalavras[4] = 'mamão';
vetorDePalavras[5] = 'uva';
vetorDePalavras[6] = 'melão';
vetorDePalavras[7] = 'melancia';
vetorDePalavras[8] = 'kiwi';
vetorDePalavras[9] = 'banana';


//for each
String texto = '';
for(String fruta:vetorDePalavras){
    if(fruta != null){
        texto += fruta + ', ';
        //System.debug('Palavra: ' + fruta);
    }
}
System.debug(texto);


System.debug((fruta!=null)?'Palavra: ' + fruta:'');








Integer tamanhoDoVetor = vetorDePalavras.size();
for(Integer i=0;i<tamanhoDoVetor;i++){
    //System.debug('i vale: ' + i);
    // if(vetorDePalavras[i] != null){
        System.debug('Palavra: ' + vetorDePalavras[i]);
    // }
}
System.debug('Código fora do loop');




//Loop

//while
//do while
//for
//for each

//iteração

Integer i = 0;
while(i < 10){
    System.debug('i vale: ' + i);
    i+=2;
}
System.debug('Código fora do loop');

Integer i = 10;
do{
    System.debug('i vale: ' + i);
    i+=1;
}while(i < 10);

for(Integer i=9;i>=0;i--){
    System.debug('i vale: ' + i);
}
System.debug('Código fora do loop');

*/

/*
//List
List<String> lista = new List<String>();
lista.add('João');
lista.add('Paulo');
System.debug(lista);
lista.set(0, 'Maria');
System.debug(lista[0]+', '+lista.get(1));

List<List<Integer>> numeros = new List<List<Integer>>(); //vetor bidimensional ou matriz
List<Integer> linha0 = new List<Integer>();
linha0.add(10);
linha0.add(20);
linha0.add(30);
//numeros.add(new List<Integer>{10,20,30})
List<Integer> linha1 = new List<Integer>();
linha1.add(50);
linha1.add(60);
linha1.add(70);
numeros.add(linha0);
numeros.add(linha1);

// for(Integer i=0;i < numeros[0].size();i++){
//     for(Integer j=0;j < numeros[1].size();j++){
//         System.debug(numeros[i][j]);
//     }
// }

for(Integer i:numeros[0]){
    System.debug(i);
    for(Integer j:numeros[1]){
        System.debug(j);
    }
}


List<Integer> linha0 = new List<Integer>{10, 20, 30};
List<Integer> linha1 = new List<Integer>{40, 50, 60};
List<List<Integer>> numeros = new List<List<Integer>>{linha0, linha1};
System.debug(numeros);


List<List<Integer>> numeros = new List<List<Integer>>{new List<Integer>{10, 20, 30}, new List<Integer>{40, 50, 60}};
System.debug(numeros);



List<List<String>> letras = new List<List<String>>(); //vetor bidimensional ou matriz
List<String> linha0 = new List<String>();
linha0.add('z');
linha0.add('b');
linha0.add('m');
//numeros.add(new List<Integer>{10,20,30})
List<String> linha1 = new List<String>();
linha1.add('a');
linha1.add('n');
linha1.add('k');
letras.add(linha0);
letras.add(linha1);

List<String> lista0 = new List<String>();
List<String> lista1 = new List<String>();
for(String i:letras[0]){
    lista0.add(i);
    for(String j:letras[1]){
        if(!lista1.contains(j))
            lista1.add(j);
    }
}

lista0.sort();
lista1.sort();
System.debug(lista0 + ' - ' + lista1);





// numeros.add(linha0);
// numeros.add(linha1);
// System.debug(numeros.get(0));
// System.debug(numeros.get(1));
// numeros[1][1] = 100;
// System.debug(numeros);
// System.debug(numeros[1][1]); //60

List<String> linha0 = new List<String>{'dez', 'vinte', 'trinta'};

Boolean contem = linha0.contains('cem');

System.debug(contem);




ContaFilter.filtrarContasAtivas();


*/