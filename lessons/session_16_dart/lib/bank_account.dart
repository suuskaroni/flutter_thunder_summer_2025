class BankAccount {
  String accountHolder;
  String accountType;
  double balance;
  int transactionCount;

  BankAccount(
    this.accountHolder,
    this.accountType,
    this.balance,
    this.transactionCount,
  );

  void deposit(double depositAmount) {
    if (depositAmount <= 0) {
      print('Invalid Deposit Amount');
    } else {
      balance = balance + depositAmount;
      transactionCount++;
      print('Deposited : ${depositAmount} New Balance : ${balance} ');
    }
  }

  bool withdraw(double withdrawAmount) {
    if (withdrawAmount <= 0) {
      print('Invalid withdrawal amount');
      return false;
    } else if (withdrawAmount > balance) {
      print('Insufficient funds');
      return false;
    } else {
      balance = balance - withdrawAmount;
      transactionCount++;
      print(
        '${withdrawAmount} дүнтэй гүйлгээ хийгдэснээр таны дансанд ${balance} төгрөг үлдсэн байна.',
      );
      return true;
    }
  }

  void checkAccountStatus() {
    if (balance > 10000){
    print(
      'Account Status \n Account Holder : ${accountHolder} \n Account Type : ${accountType} \n Current Balance : ${balance} \n Transaction Count : ${transactionCount} \n Notice : Consider investment options',
    );
    }else if(balance < 10000 && balance > 100){
      print(
        'Account Status \n Account Holder : ${accountHolder} \n Account Type : ${accountType} \n Current Balance : ${balance} \n Transaction Count : ${transactionCount}',
      );
    }else if (balance < 100){
      print(
        'Warning : Low Balance \n Account Status \n Account Holder : ${accountHolder} \n Account Type : ${accountType} \n Current Balance : ${balance} \n Transaction Count : ${transactionCount}',
      );
    }
  }
  void calculateInterest() {
    if(accountType == 'Savings'){
      double interestRate = 0.03;
      double result = balance * (interestRate / 12);
      print('Interest Calculated : $result');
    }else{
      double interestRate = 0.1;
      double result2 = balance * (interestRate / 12);
      print('Interest Calculated : $result2');
    }

  }
}
