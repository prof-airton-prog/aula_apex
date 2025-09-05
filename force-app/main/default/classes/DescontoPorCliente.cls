public class DescontoPorCliente {
    public void ajustarDesconto(Id contaId) {
        Account conta = [SELECT Id, Name, Status__c, Desconto__c FROM Account WHERE Id = :contaId]; //Query SOQL
        switch on conta.Status__c {
            when 'Novo' {
                conta.Desconto__c = 5;
            }
            when 'Fiel' {
                conta.Desconto__c = 10;
            }
            when 'VIP' {
                conta.Desconto__c = 20;
            }
            when else {
                conta.Desconto__c = 0;
            }
        }
        try{
            update conta;
            System.debug('Desconto ajustado para a conta ' + conta.Name + ': ' + conta.Desconto__c + '%');
        }catch(DMLException de){
            System.debug('Erro: ' + de.getMessage());
        }
    }
}


DescontoPorCliente dpc = new DescontoPorCliente();
dpc.ajustarDesconto('001bm000016MlxGAAS');







 
        
        
