import 'dart:io';

class Atm {
  int balance;
  Atm(this.balance);
  void deposit(int amount) {
    if (amount > 0) {
      balance = balance + amount;
      print("balance is $balance");
    } else {
      print("enter valid number");
    }
  }

  void withdraw(int amount) {
    if (amount <= 0) {
      print("enter valid number");
    } else if (amount > balance) {
      print("no enough balance");
    } else {
      balance = balance - amount;
      print("balance is $balance");
    }
  }
}

int? getAmountFromUser(String action) {
  int count = 0;
  while (count < 3) {
    stdout.write("enter amount to $action: ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("You must enter a value");
      count = count + 1;
    } else {
      int? num = int.tryParse(input);
      if (num == null) {
        print("You must enter a value");
        count = count + 1;
      } else {
        return num;
      }
    }
  }
  return null;
}

void main() {
  //  deposit
  Atm atm = Atm(1000);
  int? amount = getAmountFromUser("deposit");
  if (amount != null) {
    atm.deposit(amount);
  } else {
    print("Failed");
  }

  //  withdraw
  Atm atm2 = Atm(1000);
  int? money = getAmountFromUser("withdraw");
  if (money != null) {
    atm2.withdraw(money);
  } else {
    print("Failed");
  }
}
