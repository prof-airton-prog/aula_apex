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