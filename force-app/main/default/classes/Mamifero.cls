public with sharing class Mamifero extends ClasseAnimal{

    public override void emitirSom(){
        System.debug('Mamifero emitindo um ruído');
    }

    public void imprime(){
        emitirSom();
        super.emitirSom();
        // especie = 'Canina';
        idade = 10;
        // System.debug('Especie: '+especie);
        System.debug('Idade: '+ idade);
    }

}

// Mamifero m = new Mamifero();
// m.imprime();




//POLIMORFISMO POR OVERRIDE

// ClasseAnimal anime = new Mamifero();

// Mamifero m = (Mamifero)anime;
// m.imprime();



// sObject so = new Account();
// Account a = (Account)so;
// a.name = 'Empresa 1';
// System.debug('Nome da empresa: '+a.name);

// Lead l = new Lead();
// l.title = 'Mr Lead 1';
// Opportunity o = new Opportunity();
// o.name = 'Opportunity 1';
// Task t = new Task(Subject='Task 1');
// List<Object> listaObjs = new List<Object>();
// listaObjs.add(a);
// listaObjs.add(l);
// listaObjs.add(o);
// listaObjs.add(t);
// listaObjs.add('Abacate');

// Task ta = (Task)listaObjs[3];
// System.debug('Subject da task: '+ ta.Subject);

// System.debug(listaObjs);

// String nome = 'Airton Miguel Jr';
// System.debug(nome.length());



// Decimal numero = 1000;
// Decimal numeroComScale = numero.setScale(2,RoundingMode.CEILING);
// // System.debug('numero com scale: '+numeroComScale);

// Double number1 = numero;
// Decimal nu = (Decimal)number1;
// System.debug('número com scale Double: ' + nu.setScale(2,RoundingMode.CEILING));





