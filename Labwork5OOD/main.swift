import Foundation

enum BankName: String {
    case Tinkoff, Sber, Raiffeisen
}

func makeBank(name: BankName) -> Bank {
    switch name {
    case .Tinkoff:
        return Tinkoff()
    case .Sber:
        return Sber()
    case .Raiffeisen:
        return Raiffeisen()
    }
}

var enumBank: BankName?

repeat {
    print("Введите название банка: ")
    let name = readLine() ?? ""
    enumBank = BankName(rawValue: name)
} while enumBank == nil
            
let bank = makeBank(name: enumBank!)
let debetCard = bank.createDebitCard()
let creditCard = bank.createCreditCard()
let deposit = bank.createDeposit()
print("=================================")
print(debetCard.name)
print(debetCard.getInfo())
print("=================================")
print(creditCard.name)
print(creditCard.getInfo())
print("=================================")
print(deposit.name)
print(deposit.getInfo())
print("=================================")
            
