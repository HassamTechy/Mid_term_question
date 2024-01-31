void main() {
  var account1 = BankAccount(123456, 1000.0, 'Savings', 0.03);
  var account2 = BankAccount(789012, 2000.0, 'Current', 0.02);

  account1.deposit(500.0);
  account1.withdraw(200.0);
  account1.addInterest();
  account1.display();

  account2.deposit(1000.0);
  account2.withdraw(500.0);
  account2.addInterest();
  account2.display();
}

class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  BankAccount(this.accountNumber, this.balance, this.accountType, this.interestRate);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  void addInterest() {
    balance += balance * interestRate;
  }

  void display() {
    print('Account Number: $accountNumber');
    print('Balance: $balance');
    print('Account Type: $accountType');
    print('Interest Rate: $interestRate');
  }
}