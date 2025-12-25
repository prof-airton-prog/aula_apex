public with sharing class OrdemDeCompraDoCliente extends ClasseAnimal implements OrdemDeCompra, Bonus {
    public Decimal descontoFuncionario(){
        return 0.9;
    }

    public Decimal descontoChefia(){
        return 0.95;
    }

    public override void emitirSom(){}

    public Decimal bonusFuncionario(){
        return 1.1;
    }

    public Decimal bonusChefia(){
        return 1.2;
    }
}

// OrdemDeCompraDoCliente occ = new OrdemDeCompraDoCliente();
// Decimal salarioFuncionario = 10000.00;
// Decimal salarioChefe = 20000.00;

// System.debug('O salário do funcionário com o desconto e com o bônus é de: '+String.valueOf(salarioFuncionario*occ.descontoFuncionario()*occ.bonusFuncionario()));

// System.debug('O salário do chefe com o desconto e com o bônus é de: '+String.valueOf(salarioChefe*occ.descontoChefia()*occ.bonusChefia()));