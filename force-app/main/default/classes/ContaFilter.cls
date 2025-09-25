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

/*
Desafio: Atualizar um Campo Baseado em Outro
Você deve modificar o código anterior para analisar um campo existente e atualizar um outro campo, criando uma regra automática.

Regras do Desafio
O campo padrão "Industry" (Indústria) de cada conta pode ter vários valores, como "Technology", "Retail", "Healthcare", etc.
Criem um campo personalizado chamado "Segmento__c" (Texto).
Implementem uma lógica onde: 
Se a conta for do setor "Technology", o campo "Segmento__c" deve ser "TI & Inovação".
Se for "Retail", o campo "Segmento__c" deve ser "Comércio & Varejo".
Se for "Healthcare", o campo "Segmento__c" deve ser "Saúde & Bem-estar".
Caso contrário, o campo "Segmento__c" deve ser "Outro".

*/