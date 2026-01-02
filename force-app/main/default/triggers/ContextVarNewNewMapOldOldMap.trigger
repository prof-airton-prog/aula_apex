trigger ContextVarNewNewMapOldOldMap on Opportunity (before update) {
    List<Opportunity> listaOpAtualizadas = Trigger.new;
    List<Opportunity> listaOpAntesAtualizacao = Trigger.old;

    for(Opportunity op:listaOpAntesAtualizacao){
        System.debug('Opportunity Name (old): ' + op.Name + ' StageName: '+op.StageName);
    }

    for(Opportunity op:listaOpAtualizadas){
        System.debug('Opportunity Name (new): ' + op.Name + ' StageName: '+op.StageName);
    }
    
    // Integer tamanhoListaAtual = listaOpAtualizadas.size();
    // Integer tamanhoListaAntes = listaOpAntesAtualizacao.size();
    // List<List<Object>> listaGeral = new List<List<Object>>();
    // Integer posicao = 0;
    // for(Opportunity op:listaOpAtualizadas){
    //     for(Integer i=0;i<tamanhoListaAtual;i++){
    //         Object novo = 'New';
    //         listaGeral[i][0] = novo;
    //         listaGeral[i][1] = op;
    //         posicao++;
    //     }
    // }

    // for(Opportunity op:listaOpAntesAtualizacao){
    //     for(Integer i=posicao+1;i<tamanhoListaAntes;i++){
    //         Object velho = 'Old';
    //         listaGeral[i][0] = velho;
    //         listaGeral[i][1] = op;
    //     }
    // }

    // for(List<Object> op:listaGeral){
    //     String tipo = (String)op[0];
    //     Opportunity opp = (Opportunity)op[1];
    //     System.debug(' - Tipo: ' + tipo +' - Opportunity Name: ' + opp.Name + ' StageName: '+opp.StageName);
    // }

    // for(Object ob:listaGeral){
    //     Opportunity op = (Opportunity)ob;
    //     System.debug(op.Name + ' - ' + op.StageName);
    // }
}


//Opportunity Name
//Close Date
//Stage: Prospecting

// List<Opportunity> listaOportunidades = new List<Opportunity>();

// for(Opportunity op:[SELECT Id, Name, CloseDate, StageName FROM Opportunity WHERE StageName = 'Closed Won' LIMIT 100]){
//     op.StageName = 'Prospecting';
//     listaOportunidades.add(op);
//     // System.debug(op.Name + ' - ' + op.StageName);
// }

// try{
//     update listaOportunidades;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }
