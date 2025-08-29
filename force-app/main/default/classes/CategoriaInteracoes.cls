public class CategoriaInteracoes {
	    
    private String categorizar(Integer n){
        if(n >= 20){
            return 'Cliente VIP';
        }else{
            return 'Cliente regular';
        }
    }
    
    public void insereContato(String priNome, String segNome, Integer nInt){
        Contact c = new Contact();
        c.Firstname = priNome;
        c.Lastname = segNome;
        c.Number_of_Interactions__c = nInt;
        String categoria = this.categorizar(nInt);
        c.Categoria__c = categoria;
        try{
            insert c;
        }catch(DMLException de){
            System.debug('Error: ' + de.getMessage());
        }
    }
}