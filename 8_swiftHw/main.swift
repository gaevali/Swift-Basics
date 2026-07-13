


//Вычисляемые свойства
//1

struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        (celsius * 9/5) + 32
    }
}
let temp = Temperature(celsius: 20)
print(temp.fahrenheit)

//2

struct Rectangle {
    var width: Int
    var height: Int
    
    var perimeter: Int {
        (width + height) * 2
    }
}

let rect = Rectangle(width: 10, height: 15)
print(rect.perimeter)

//3

struct BankAccount {
    var balance: Double
    
    var formattedBalance: String {
        "your balance is \(balance)"
    }
    var isOverdrawn: Bool {
        balance < 0
    }
}

//4

struct CartItem {
    var name: String
    var pricePerItem: Double
    var quantity: Int
    
    var totalPrice: Double {
        pricePerItem * Double(quantity)
    }
}
let item = CartItem(name: "milk", pricePerItem: 23.99, quantity: 3)
print(item.totalPrice)

//Наблюдатели свойств
//1

struct Post {
    var likes = 0 {
        didSet {
            print("Лайков стало \(likes)")
        }
    }
}
var post = Post()
post.likes += 1

//2

struct StepTracker {
    var steps: Int = 0 {
        didSet {
            print("Сегодня пройдено \(steps) шагов")
            if steps > 10000 {
                print("Цель достигнута!")
            }
        }
    }
}

var tracker = StepTracker()
tracker.steps += 100
tracker.steps += 10000

//3

struct Wallet {
    var money: Double = 0 {
        didSet {
            if money < 0 {
                print("У вас долг!")
            }
            if money > oldValue {
                print("Поступление: \(money - oldValue)")
            }
            if money < oldValue {
                print("Трата: \(oldValue - money)")
            }
        }
    }
}

var myWallet = Wallet()
myWallet.money += 1000
myWallet.money -= 100
myWallet.money -= 10000

//4

struct UserAccount {
    var password: String {
        willSet {
            if newValue.count < 6 {
                print("Пароль слишком короткий!")
            }
        }
        didSet {
            if password != "" {
                print("Пароль обновлён")
            }
        }
    }
}

var account = UserAccount(password: "qwertyuiop")
account.password = "jklkj"

