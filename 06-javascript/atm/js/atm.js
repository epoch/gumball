// var balance = 0

// var deposit = function(amount) {
//   balance = balance + amount;
// }

// var withdraw = function(amount) {
//   if (amount <= balance) {
//     balance = balance - amount;
//     return true
//   } else {
//     return false;
//   }
// }

// var savingsAccount = {
//   balance: 0,

//   deposit: function(amount) {
//     this.balance = this.balance + amount;
//   },

//   withdraw: function(amount) {
//     if (amount <= this.balance) {
//       this.balance = this.balance - amount;
//       return true
//     } else {
//       return false;
//     }
//   }
// }

var createAccount = function(initialBalance) {

  var account = {
    balance: initialBalance,

    deposit: function(amount) {
      this.balance = this.balance + amount;
    },

    // not a safe form of contraception
    withdraw: function(amount) {
      if (amount <= this.balance) {
        this.balance = this.balance - amount;
        return true
      } else {
        return false;
      }
    }

  };

  return account;
};


// var renderBalance = function() {
//   var checkingBalance = document.getElementById('balance1');
//   checkingBalance.innerHTML = '$' + checkingsAccount.balance;  
// }

// var checkingsAccount = createAccount(0);

// var checkingDepositBtn = document.getElementById('checkingDeposit');

// checkingDepositBtn.addEventListener('click', function() {
//   var amount = parseInt(document.getElementById('checkingAmount').value);

//   checkingsAccount.deposit(amount);
//   renderBalance();
// });

var app = {

  init: function() {
    this.savingsAccount = createAccount(15);
    this.checkingsAccount = createAccount(50);
    this.renderBalance();

    var checkingDepositBtn = document.getElementById('checkingDeposit');

    checkingDepositBtn.addEventListener('click', function() {
      var amount = parseInt(document.getElementById('checkingAmount').value);

      app.checkingsAccount.deposit(amount);
      app.renderBalance();
    });

  },

  renderBalance: function() {
    var checkingBalance = document.getElementById('balance1');
    checkingBalance.innerHTML = '$' + this.checkingsAccount.balance;  
  }
}

app.init();
