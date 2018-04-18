% Listing 18-17 - BankAccount test script
clear
clc
clear classes

 moola = BankAccount(1000)
 deposit(moola, 20.11)
 fprintf('deposit 20.11 -> %s\n', char(moola) );
 gets = withdraw(moola, 200);
 fprintf('withdraw 200 -> $%.2f; %s\n', ...
        gets, char(moola) )
    
% Listing 18-22 - SavingsAccount tests
 sa = SavingsAccount(2000)
 deposit(sa, 3000);
 fprintf('deposit 3000 -> %s\n', char(sa) );
 intrst = calcInterest(sa);
 deposit(sa, intrst);
 fprintf('deposit interest %.2f -> %s\n', ...
             intrst, char(sa) );

% Listing 18-28 – Testing the Delux Savings Account
 dsa = DeluxSavingsAccount(2000)
 deposit(dsa, calcInterest(dsa) )
 fprintf('deposit interest -> %s\n', char(dsa) );
 gets = withdraw(dsa, 3000);
 fprintf('try to get 3000 -> $%8.2f; %s\n', ...
     gets, char(dsa) )
 deposit(dsa, 500);
 fprintf('deposit 500 -> %s\n', char(dsa) );
 allowOverdraft(dsa, true)
 gets = withdraw(dsa, 3000);
 fprintf(...
     'enable overdraft and try again -> $%8.2f; %s\n', ...
     gets, char(dsa) )
