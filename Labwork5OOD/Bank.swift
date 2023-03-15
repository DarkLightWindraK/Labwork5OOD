import Foundation

protocol Bank {
    func createDebitCard() -> BankProduct
    func createCreditCard() -> BankProduct
    func createDeposit() -> BankProduct
}

struct Sber: Bank {
    func createDebitCard() -> BankProduct {
        DebetCard(name: "СберКарта", percent: 5, cashBack: 1)
    }
    
    func createCreditCard() -> BankProduct {
        CreditCard(name: "Кредитная СберКарта", percent: 39, limit: 60000)
    }
    
    func createDeposit() -> BankProduct {
        Deposit(name: "СберВклад", amount: 10000000, expirationDate: .now + 63072000)
    }
}

struct Tinkoff: Bank {
    func createDebitCard() -> BankProduct {
        DebetCard(name: "Tinkoff Black", percent: 5, cashBack: 15)
    }
    
    func createCreditCard() -> BankProduct {
        CreditCard(name: "Tinkoff Platinum", percent: 12, limit: 100000)
    }
    
    func createDeposit() -> BankProduct {
        Deposit(name: "Мультивалютный", amount: 500000, expirationDate: .now + 45345434)
    }
}

struct Raiffeisen: Bank {
    func createDebitCard() -> BankProduct {
        DebetCard(name: "Все сразу", percent: 0, cashBack: 2)
    }
    
    func createCreditCard() -> BankProduct {
        CreditCard(name: "Не все сразу", percent: 40, limit: 10000)
    }
    
    func createDeposit() -> BankProduct {
        Deposit(name: "Супервклад", amount: 10000000000, expirationDate: .now + 10000000)
    }
}

