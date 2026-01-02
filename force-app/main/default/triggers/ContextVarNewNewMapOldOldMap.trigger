trigger ContextVarNewNewMapOldOldMap on Opportunity (before update) {
    List<Opportunity> listaOpAtualizadas = Trigger.new;
    List<Opportunity> listaOpAntesAtualizacao = Trigger.old;
    // Integer tamanhoListaAtual = listaOpAtualizadas.size();
    // Integer tamanhoListaAntes = listaOpAntesAtualizacao.size();
    // List<List<Object>> listaGeral = new List<List<Object>>();
    // Integer posicao = 0;
    // for(Opportunity op:listaOpAtualizadas){
    //     for(Integer i=0;i<tamanhoListaAtual;i++){
    //         listaGeral[i][0].add('New');
    //         listaGeral[i][1].add(op);
    //         posicao++;
    //     }
    // }

    // for(Opportunity op:listaOpAntesAtualizacao){
    //     for(Integer i=posicao+1;i<listaOpAntesAtualizacao;i++){
    //         listaGeral[i][0].add('New');
    //         listaGeral[i][1].add(op);
    //     }
    // }

    // for(List<Object> op:listaGeral){
    //     String tipo = (String)op[0];
    //     Opportunity op = (Opportunity)op[1];
    //     System.debug(' - Tipo: ' + tipo +' - Opportunity Name: ' + op.Name + ' StageName: '+op.StageName);
    // }

    // for(Opportunity op:listaGeral){
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
// }

// try{
//     update listaOportunidades;
// }catch(DmlException e){
//     System.debug('Erro: '+e.getMessage());
// }
