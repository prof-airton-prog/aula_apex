public abstract class ClasseAnimal {

    private String especie;
    public Integer idade;

    public abstract void emitirSom();

    public void beber(){
        System.debug('Animal bebendo');
    }

    public virtual String locomover(){
        return 'Animal locomovendo';
    }

    //POLIMORFISMO OVERLOAD NOS CONSTRUTORES E NOS MÉTODOS
}

