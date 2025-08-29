public class Nota {
    public Nota(){
        ClasseComStatic c = new ClasseComStatic();
        c.variavelMembro += 1;
        System.debug(c.variavelMembro);
    }
}