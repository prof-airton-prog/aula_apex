public class AdicionaConta {
	public static Integer incrementaConta=0;
    //Construtor com exemplo de polimorfismo (overload - sobrecarga)
    public AdicionaConta(){}
    public AdicionaConta(String conta){
        System.debug(conta);
    }

    public static void insereConta(String nomeDaConta){
        try{
            Account a = new Account(Name=nomeDaConta);
            insert a;
            System.debug('Conta de id: '+a.Id+' inserida com sucesso!');
            incrementaConta++;
        }catch(DMLException de){
            System.debug('Erro: '+de.getMessage());
        }
    }
}