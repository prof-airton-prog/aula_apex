public with sharing class PaiStandardFilhoCustom {
    public PaiStandardFilhoCustom() {
        List<Account> contas = [SELECT Name, (SELECT Name, email__c FROM Filiais__r) FROM Account];
        Account conta;
        String nomeDaConta;
        Filial__c filial;
        String nomeDaFilial;
        for(Integer i=0;i<contas.size();i++){
            Integer qtdeContas = contas[i].Filiais__r.size();
            for(Integer j=0;j<qtdeContas;j++){
                conta = contas[i];
                nomeDaConta = conta.Name;
                filial = conta.Filiais__r[j];
                nomeDaFilial = filial.Name;
                System.debug(nomeDaConta + ' - ' + nomeDaFilial);
            }
        }
    }
}

// PaiStandardFilhoCustom psfc = new PaiStandardFilhoCustom();