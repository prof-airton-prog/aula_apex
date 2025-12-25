public with sharing class Mamifero extends ClasseAnimal{

    public override void emitirSom(){
        System.debug('Som de mamifero');
    }

    public void imprime(){
       beber();
    }

}


// Mamifero m = new Mamifero();
// m.imprime();

// //***Não funciona***/
// ClasseAnimal ca = new ClasseAnimal();
// ca.beber();
// //******************/



