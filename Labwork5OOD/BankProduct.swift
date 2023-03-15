import Foundation

protocol BankProduct {
    var name: String { get set }
    
    func getInfo() -> String
}

struct DebetCard: BankProduct {
    var name: String
    var percent: UInt
    var cashBack: UInt
    
    func getInfo() -> String {
        "Процент на остаток: \(percent)\nКешбек: \(cashBack)"
    }
}

struct Deposit: BankProduct {
    var name: String
    var amount: Double
    var expirationDate: Date
    
    func getInfo() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return "Сумма вклада: \(amount)\nДата истечения: \(formatter.string(from: expirationDate))"
    }
}

struct CreditCard: BankProduct {
    var name: String
    var percent: UInt
    var limit: UInt
    
    func getInfo() -> String {
        "Процент годовых: \(percent)%\nКредитный лимит: \(limit)"
    }
}
