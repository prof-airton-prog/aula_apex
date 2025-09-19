public class ContaFilter {
    public static void filtrarContasAtivas() {
        List<Account> todasAsContas = [SELECT Name, Status__c FROM Account];

        List<String> contasAtivas = new List<String>();

        for (Account conta : todasAsContas) {
            if (conta.Status__c == 'Ativa') {
                System.debug('Conta Ativa: ' + conta.Name);
            }else if(conta.Status__c == 'Inativa'){
                System.debug('Conta inativa: ' + conta.Name);
            }else{
                System.debug('Conta não ativa e não Inativa: ' + conta.Name);
            }
        }
        
    }
}