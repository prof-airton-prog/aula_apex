public with sharing class BuscaContasParaTriggerHandler {
    private String nomeInterno;
    public BuscaContasParaTriggerHandler(String inicioNome) {
        this.nomeInterno = inicioNome;
    }

    public List<Account> buscaContas(){
        return [SELECT Name FROM Account WHERE Name LIKE :this.nomeInterno+'%'];
    }
}