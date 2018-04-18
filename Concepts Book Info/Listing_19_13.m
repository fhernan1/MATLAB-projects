% Listing 19.13 - testing the filter function
clear
clc
clear classes

 BAList = LinkedList;
 addToHead(BAList, BankAccount)
 addToHead(BAList, BankAccount(-1000))
 addToHead(BAList, SavingsAccount(2000))
 dsa = DeluxSavingsAccount(2000);
 allowOverdraft(dsa, true);
 gets = withdraw(dsa, 3000);
 addToHead(BAList, dsa)
 fprintf('accounts: %s\n', char(BAList) )
 goodAccts = LinkedList(BAList);
 filter(goodAccts);
 fprintf('\ngood accounts: %s\n',char(goodAccts) )
 total = sum(BAList)
