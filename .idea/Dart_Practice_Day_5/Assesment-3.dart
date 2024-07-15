//Create a class VisaCard that has the following fields:
// cardHolderName, cardNumber, cardMonthlyLimitAmount (360000.0), totalOutstanding (with default value 0.0).
//  Add a constructor with named required arguments.
// Add a method withdraw(amount) that returns a String saying successful or failed withdrawal message. Conditions for withdrawal:
// Whatever amount you withdraw, will be added to totalOutstanding.
// Check before you add, If totalOutstanding plus amount is equal or greater than cardMonthlyLimitAmount, cancel withdraw and return a failure message.
// If not, add the amount to totalOutstanding and return a successful message.
// Add a method printBill that prints the current totalOutstanding. This method should return: “Your total outstanding amount is <totalOutstanding>.
// Add a method payBill(billAmound). Conditions are:
// Check if billAmount is equal to or less than totalOutstanding.
// If (i) is true subtract billAmount from totalOutstanding and return a message: “Your bill payment is successful.
// Current total outstanding is <totalOutstanding>”.
// If (i) is false return the message: “Bill amount exceeds your current outstanding amount. Please verify your bill amount and try again”.
// From the main function:
// Create a card account (VisaCard object).
// Withdraw some amount..
// Withdraw some amount again.
// Print the bill.
// Pay the bill (partially or fully)

class VisaCard {
  String cardHolderName;
  num cardNumber;
  num cardMonthlyLimitAmount;
  num totalOutstanding;

  VisaCard(
      {required this.cardHolderName,
      required this.cardNumber,
      required this.cardMonthlyLimitAmount,
      required this.totalOutstanding});

  String withdraw(amount) {

    if (totalOutstanding >= cardMonthlyLimitAmount) {
      return "Withdrawal Failed";
    } else
      totalOutstanding += amount;
      cardMonthlyLimitAmount -= amount;
    return "Wathdrawal Successful";
  }

  String printBill() {
    return "Your total outstanding amount is $totalOutstanding";
  }

  payBill(billAmound) {
    bool bill = billAmound >= totalOutstanding;
    if (bill == true) {
      totalOutstanding -= billAmound;
      return 'Your bill payment is successful. Current total outstanding is $totalOutstanding';
    }
    return 'Bill amount exceeds your current outstanding amount. Please verify your bill amount and try again';
  }
}

void main() {
  VisaCard roni = VisaCard(
      cardHolderName: "Roni",
      cardNumber: 11221244254,
      cardMonthlyLimitAmount: 1000,
      totalOutstanding: 0.0);

  print(roni.withdraw(500, ));
  print(roni.withdraw(6000));

  print(roni.printBill());
  print(roni.payBill(5000));
}
