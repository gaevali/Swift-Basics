//1
//var name: String? = nil
//name = "Ali"
//print(name ?? "error")
//
////2
//var age: Int? = nil
//
//if let age {
//    print(age)
//} else {
//    print("Возраст не указан")
//}

//3
var nickname: String? = "ErrorNil"

if let nickname {
    print("Твой ник: \(nickname)")
} else {
    print("Ника нет")
}

//4
var email: String? = nil

if let email {
    print("Твой email: \(email)")
} else {
    print("Email не задан")
}

//5
var name: String?
var age: Int?
var city: String?

print("Имя: \(name ?? "Имя не указано")")
print("Возраст: \(age ?? 0)")
print("Город: \(city ?? "Город не указан")")

//6

var score: Int? = 85

if let score {
    if score >= 80 {
        print("Отлично")
    } else if score >= 50 {
        print("Хорошо")
    } else if score < 50 {
        print("Нужно подтянуть")
    }
} else {
    print("Нет данных")
}

//7
var numberString: String? = "42"

if let numberString, let number = Int(numberString) {
    print("Число: \(number)")
} else {
    print("некорректное значение")
}

//8
var day = 3

switch day {
case 1:
    print("Понедельник")
case 2:
    print("Вторник")
case 3:
    print("Среда")
default:
    print("День не распознан")
}

//9

var color = "red"

switch color {
case "red":
    print("Стой")
case "yellow":
    print("Жди")
case "green":
    print("Иди")
default:
    print("Неизвестный цвет")
}

//1

var numberString1: String? = "123"

if let numberString1, let number = Int(numberString1) {
    print("Число: \(number)")
} else {
    print("Не удалось преобразовать")
}

//2

var username: String? = "Alice"
var password: String? = nil

if let name = username, let pass = password {
    print("Добро пожаловать, \(name)!")
} else {
    print("Введите имя и пароль")
}

//3

var name1: String? = "Bob"
var email1: String? = nil
var country: String? = "Kazakhstan"

if let name1, let email1, let country {
    print("Профиль: \(name1), \(email1), \(country)")
} else {
    print("Заполните все поля")
}



