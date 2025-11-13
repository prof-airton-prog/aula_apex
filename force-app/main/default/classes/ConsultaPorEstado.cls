public with sharing class ConsultaPorEstado {

    public static List<Account> consultaPorEstado(String estado){
        return [SELECT Name, BillingCity, BillingCountry FROM Account WHERE BillingState = :estado];
    }

    public static void exibeConsulta(List<Account> listaDeContas){
        for(Account conta : listaDeContas){
            System.debug(conta.Name);
        }
    }

    //Método de exemplo exibição pela query
    public static void exibeConsultaPorEstado(String estado){
        for(Account conta : [SELECT Name, BillingCity, BillingCountry FROM Account WHERE BillingState = :estado]){
            System.debug(conta.Name);
        }
    }
}


/*
List<Account> contas = ConsultaPorEstado.consultaPorEstado('OR');

ConsultaPorEstado.exibeConsulta(contas);
*/

//ConsultaPorEstado.exibeConsulta(ConsultaPorEstado.consultaPorEstado('OR'));

//ConsultaPorEstado.exibeConsultaPorEstado('CA');