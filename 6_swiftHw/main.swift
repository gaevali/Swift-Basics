
//1

enum Direction {
    case north
    case south
    case east
    case west
}

func move(direction: Direction) {
    switch direction {
    case .north:
        print("Gp up")
    case .south:
        print("Go down")
    case .east:
        print("Go right")
    case .west:
        print("Go left")
    }
}
move(direction: .north)
move(direction: .east)

//2

enum GameLevel: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

func checkLevel(level: String) {
    if let gameLevel = GameLevel(rawValue: level) {
        print(gameLevel)
    } else {
        print("Unknown level")
    }
}

checkLevel(level: "Easy")

//3

enum Payment {
    case cash(Double)
    case card(number: String, amount: Double)
    case crypto(wallet: String, amount: Double)
}

func process(payment: Payment) {
    switch payment {
    case .cash(let amount):
        print("paying \(amount) in cash")
    case .card(let number, let amount):
        print("your card is \(number) and total: \(amount)")
    case .crypto(let wallet, let amount):
        print("Crypto wallet: \(wallet) Amount: \(amount)")
    }
}

process(payment: .card(number: "123456789", amount: 789))

//4

enum AppEvent {
    case login(user: String)
    case logout(user: String)
    case error(message: String)
    case purchase(user: String, amount: Double)
}

func defineEvent(event: AppEvent) {
    switch event {
    case .login(let user):
        print("logged in as \(user)")
    case .logout(let user):
        print("logged out from \(user)")
    case .error(let message):
        print("error occured with message: \(message)")
    case .purchase(let user, let amount) where amount > 1000:
        print("\(user): Big spender!")
    case .purchase(let user, let amount):
        print("youve purchased from profile \(user) and amount: \(amount)")
    }
}

//5

enum Notification {
    case message(user: String, text: String)
    case friendRequest(user: String)
    case system(message: String)
}

func handle(notification: Notification) {
    switch notification {
    case .message(let user, let text):
        print("user \(user) has sent you a message: \(text)")
    case .friendRequest(let user):
        print("youve received a friend request from \(user)")
    case .system(let message):
        print("system message: \(message)")
    }
}
handle(notification: .message(user: "ali", text: "how is it going?"))

//6

enum DownloadResult {
    case success(filePath: String, size: Int)
    case failure(error: String)
}

func downloadRes(result: DownloadResult) {
    switch result {
    case .success(let filePath, let size):
        print("succeeded with file path \(filePath) and size \(size) MB")
    case .failure(let error):
        print("error occurred with message: \(error)")
    }
}
downloadRes(result: .success(filePath: "q12w3e4r5", size: 256))

