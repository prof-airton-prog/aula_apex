public with sharing class ClasseDML {
    private String billingCity;

    public ClasseDML(String billingCity){
        this.billingCity = billingCity;
    }

    public ClasseDML(){}

    public void insereConta(String nome, String telefone){
        Account acc = new Account(Name = nome);
        acc.Phone = telefone;
        acc.BillingCity = this.billingCity;

        try{
            insert acc;
            System.debug('O id de conta inserido é: ' + acc.Id);
        }catch(DmlException e){
            System.debug('Erro: '+e.getMessage());
        }
    }

    private List<Lead> buscaLeadsPorStatus(String statusAtual){
        return [SELECT Name, Status FROM Lead WHERE Status = :statusAtual];
    }

    public void atualizaStatusLead(String statusAtual, String novoStatus){

        List<Lead> leads = new List<Lead>();

        for(Lead leadChange:buscaLeadsPorStatus(statusAtual)){
            leadChange.status = novoStatus;
            leads.add(leadChange);
        }

        try{
            update leads;
        }catch(DmlException dmle){
            System.debug(dmle.getMessage());
        }
    }
}

// ClasseDML clDML = new ClasseDML('São Paulo');
// clDML.insereConta('Dell do Brasil', '(19) 99999-8888');


// Account a = [SELECT Name, billingCity FROM Account WHERE Id = '001bm00001JW3qXAAT'];
// System.debug('Conferência do nome da conta inserida: ' + a.Name);

// ClasseDML clDML = new ClasseDML();
// clDML.atualizaStatusLead('Open - Not Contacted', 'Closed - Not Converted');
