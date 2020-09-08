global with sharing class TestClass {
    global TestClass() {

    }

    @InvocableMethod(label='Get Account Names' description='Returns the list of account names corresponding to the specified account IDs.' category='Account')
    global static List<String> getAccountNames() {
        List<String> accountNames = new List<String>();
        List<Account> accounts = [SELECT Name FROM Account];
        for (Account account : accounts) {
            accountNames.add(account.Name);
        }
        return accountNames;
    }
}
