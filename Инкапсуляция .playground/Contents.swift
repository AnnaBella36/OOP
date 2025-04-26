import UIKit
//инкапсуляция

class BankAccount {
    
    private var balance: Double = 0.0
    
    
    //метод для пополнения счета
    func deposit(amount: Double){
        guard amount > 0 else {
            print("невозможно пополнить отрицательной суммой")
            return
        }
        balance += amount
        print("Счет поплнен на \(amount)$. Текущий баланс: \(balance)$")
    }
    
    //метод для снятия счета
    func withdraw(amount: Double){
        guard amount > 0 else {
            print("сумма для снятия должна быть положительной ")
            return
        }
        
        guard amount <= balance else {
            print("Недостаточно средств")
            return
        }
        balance -= amount
        print("Снято \(amount)$. Остаток на счете \(balance)$")
        
    }
    
    //метод для получения текщего баланса
    func getBalance() -> Double{
        return balance
    }
    
}

let myAccount = BankAccount()
myAccount.deposit(amount: 1000)
myAccount.withdraw(amount: 300)
print("Баланс: \(myAccount.getBalance())$")
