public with sharing class Propriedades {
    private String nomeInterno;
    protected String endereco;
    public String nome {
        get{
            return nomeInterno;
        }
        set{
            if(value != null && value.length() > 0){
                nomeInterno = value.trim();
            }
        }

    }
}


// Propriedades p = new Propriedades();
// p.nome = 'Airton';

// System.debug(p.nome);

