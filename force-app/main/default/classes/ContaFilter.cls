public class ContaFilter {
    public static void filtrarContasAtivas() {
        List<Account> todasAsContas = [SELECT Name, Status__c FROM Account];

        List<String> contasAtivas = new List<String>();

        for (Account conta : todasAsContas) {
            if (conta.Status__c == 'Ativo') {
                contasAtivas.add(conta.Name);
            }
        }
        
        System.debug('Contas ativas: ' + contasAtivas);
    }
}

/*
List<Integer> listaN = new List<Integer>();

listaN.add(1);
listaN.add(3);
listaN.add(1);
listaN.add(9);
listaN.add(2);
listaN.add(5);
listaN.add(0);
listaN.add(11);
listaN.add(5);
listaN.add(0);

System.debug(listaN);

Set<Integer> setN = new Set<Integer>(listaN);
System.debug(setN);



Set<String> setStrings = new Set<String>();
setStrings.add('A');
setStrings.add('E');
setStrings.add('C');
setStrings.add('B');
setStrings.add('B');
System.debug(setStrings);



List<String> lista = new List<String>{'Macaco', 'Cachorro', 'Gato', 'Zebra', 'Pássaro'};
System.debug(lista);
Set<String> conjunto = new Set<String>{'Elefante', 'Girafa', 'Cavalo'};
System.debug(conjunto);

Boolean setAlterado = conjunto.addAll(lista); 

System.debug(setAlterado? 'Conjunto alterado' : 'Conjunto não alterado');
System.debug(conjunto);


List<String> lista = new List<String>{'Macaco', 'Cachorro', 'Gato', 'Zebra', 'Pássaro'};
System.debug(lista);
Set<String> conjunto = new Set<String>{'Macaco', 'Cachorro', 'Gato', 'Zebra', 'Pássaro'};
System.debug(conjunto);

Boolean setAlterado = conjunto.addAll(lista);

System.debug(setAlterado? 'Conjunto alterado' : 'Conjunto não alterado');
System.debug(conjunto);

String animal = 'Rato';
Boolean temAnimal = conjunto.contains(animal);

System.debug(temAnimal?('Tem  '+animal):('Não tem '+animal));




//Iterando

Set<String> conjunto = new Set<String>{'Macaco', 'Cachorro', 'Gato', 'Zebra', 'Pássaro'};
System.debug('Tamanho do conjunto: '+conjunto.size());

for(String elementos:conjunto){
    System.debug(elementos);
}

//Removendo

Set<String> conjunto = new Set<String>{'Macaco', 'Cachorro', 'Gato', 'Zebra', 'Pássaro'};
String animal = 'Macaco';
System.debug('Antes de remover: '+conjunto);
if(conjunto.contains(animal)){
    conjunto.remove('Macaco');
    System.debug('Animal removido com sucesso, novo conjunto: '+conjunto);
}else{
    System.debug('Não existe o animal '+animal+' no conjunto');
}

//Map

Map<String, String> mapa = new Map<String, String>{'nome'=>'Marcos', 'sobrenome'=>'Santos', 'idade'=>'23'};
mapa.put('end', 'Rua 123');
System.debug(mapa);



Map<String, Account> mapaSObject = new Map<String, Account>{'conta1'=>new Account(Name='Empresa 1'), 'conta2'=>new Account(Name='Empresa 2')};

mapaSObject.put('conta3', new Account(Name='Empresa 3'));
Account ac = new Account(Name='Empresa 4');
mapaSObject.put('conta4', ac);
System.debug('1: '+mapaSObject);
Account acc = new Account(Name='Empresa 5', Phone='123456789');
mapaSObject.put('conta4', acc);
System.debug('2: '+mapaSObject);

//Pego empresa 2 usando o get()
System.debug(acc.Phone);
Account contaFinal = mapaSObject.get('conta4');
System.debug(contaFinal.Name);
System.debug(mapaSObject.get('conta4').Phone);
//acc == mapaSObject.get('conta4')
System.debug(mapaSObject);
Set<String> chaves = mapaSObject.keySet();
System.debug('Conjunto das chaves do mapa: '+chaves);

for(String a:chaves){
    if(mapaSObject.get(a).Phone != null){
        System.debug('Chave: '+a+' Valor: '+mapaSObject.get(a));
    }else{
        System.debug('Chave: '+a+' Valor: '+mapaSObject.get(a)+' sem telefone');
    }
    
}

//remove pela chave
mapaSObject.remove('conta4');
System.debug(mapaSObject);
*/

