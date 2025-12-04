public with sharing class UpdateOrInsert {

    public static void importAccountsFromCsv() {
        StaticResource sr = [SELECT Body FROM StaticResource WHERE Name = 'Lista' LIMIT 1];
        List<Account> accountsToUpsert = new List<Account>();
        Blob csvBlob = sr.Body;
        String csvText = csvBlob.toString();

        csvText = csvText.replace('\r', '');
        List<String> lines = csvText.split('\n');

        if (lines.isEmpty()){
            System.debug('CSV vazio');
            return;
        }

        List<String> header = lines[0].split(',');
        System.debug(header);
        Map<String, Integer> colIndexByName = new Map<String, Integer>();

        for(Integer i=0; i<header.size();i++){
            String columnName = header[i].trim();
            colIndexByName.put(columnName, i);
        }
        System.debug(colIndexByName);

        for(Integer lineNum = 1; lineNum < lines.size(); lineNum++){
            String line = lines[lineNum].trim();
            if(line == ''){
                continue;
            }

            List<String> columns = line.split(',', -1);
            System.debug(columns);

            Account acc = new Account();

            if(colIndexByName.containsKey('External_ID')){
                acc.External_ID__c = columns[colIndexByName.get('External_ID')].trim();
            }

            if(colIndexByName.containsKey('Account Name')){
                acc.Name = columns[colIndexByName.get('Account Name')].trim();
            }

            if(colIndexByName.containsKey('Account Phone')){
                acc.Phone = columns[colIndexByName.get('Account Phone')].trim();
            }

            if(colIndexByName.containsKey('Account Number')){
                acc.AccountNumber = columns[colIndexByName.get('Account Number')].trim();
            }

            if(colIndexByName.containsKey('Account Site')){
                acc.Site = columns[colIndexByName.get('Account Site')].trim();
            }

            accountsToUpsert.add(acc);
        }

        if(!accountsToUpsert.isEmpty()){
            // Database.UpsertResult[] results = Database.upsert(accountsToUpsert, Account.External_ID__c, false);

            // for (Integer i = 0; i < results.size(); i++) {
            //     Database.UpsertResult sru = results[i];
            //     if (sru.isSuccess()) {
            //         System.debug('Sucesso! ID: ' + sru.getId() + ', Foi um novo registro: ' + sru.isCreated());
            //     } else {
            //         System.debug('Erro ao processar o registro ' + i + ': ' + sru.getErrors());
            //     }
            // }
            upsert accountsToUpsert Account.External_ID__c;
        }
    }
}

//  UpdateOrInsert.importAccountsFromCsv();

// List<Account> contasParaExtId = [SELECT Name, Id, External_Id__c FROM Account WHERE Phone = null];
// List<Account> inserindoExtId = new List<Account>();
// String prefixExtID = 'SF';
// Integer counter = 100;
// for(Account a:contasParaExtId){
//     System.debug(a.name);
//     prefixExtID = 'SF'+counter;
//     counter++;
//     a.External_Id__c = prefixExtID;
//     inserindoExtId.add(a);
// }

// update contasParaExtId;


// List<Account> contasComExtId = [SELECT Name, Id, External_Id__c FROM Account WHERE External_ID__c != null];
// // List<Account> inserindoExtId = new List<Account>();
// // String prefixExtID = 'SF';
// // Integer counter = 100;
// for(Account a:contasComExtId){
//     System.debug(a.name+','+a.External_Id__c);
//     // prefixExtID = 'SF'+counter;
//     // counter++;
//     // a.External_Id__c = prefixExtID;
//     // inserindoExtId.add(a);
// }

// // update contasParaExtId;


