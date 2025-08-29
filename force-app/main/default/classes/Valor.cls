public class Valor {
    public Valor(){
        ClasseComStatic c = new ClasseComStatic();
        c.variavelMembro += 1;
        System.debug(c.variavelMembro);
    }
}