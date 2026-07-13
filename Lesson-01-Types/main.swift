//Конкатинация
//1
var firstName = "Ali"
var lastName = "Gaev"

var fullName = firstName + " " + lastName
print(fullName)

//2
var age = 19
var message = "My name is " + fullName + " and im " + String(age) + " years old"

print(message)

//3
var firstNumber: Int
var secondNumber: Int

print("Enter the first number: ")
firstNumber = Int(readLine()!)!

print("Enter the second number: ")
secondNumber = Int(readLine()!)!

var sum = "the sum of " + String(firstNumber) + " and " + String(secondNumber) + " is " + String(firstNumber + secondNumber)
print(sum)


//Интерполяция

//1

var age1 = 19
var message1 = "My name is \(fullName) and im \(age1) years old"

print(message1)

//2

var height: Double
var weight: Double

print("Enter your height in meters: ")
height = Double(readLine()!)!

print("Enter your weight in kg: ")
weight = Double(readLine()!)!

let bmi = weight / (height * height)
print("Your BMI is \(bmi)")

//3

var productName: String = "banana"
var price: Int = 12
var quantity: Int = 12

var line = "You have added \(quantity) pcs of '\(productName)' to the cart for \(price * quantity) rubles"

print(line)


//Основные типы данных


//1

var min: Int16 = -32768
//let minValue: Int16 = Int16.min
var twoHundred: UInt8 = 200
var pi: Double = 3.1415926535
var notTrue: Bool = false
var phrase: String = "cogito, ergo sum"

//2

var number: Int

print("Enter a number: ")
number = Int(readLine()!)!
print("the square of \(number) is \(number * number)")

//3

var isEven: Bool
var someNumber: Int

print("Enter a number: ")
someNumber = Int(readLine()!)!
if someNumber % 2 == 0 {
    isEven = true
    print("is the number is even: \(isEven)")
} else {
    isEven = false
    print("is the number is even: \(isEven)")
}

//Переменные и константы

//1

var temperature: Float = 27
temperature = 23

//2

let birthYear: Int = 2006

//birthYear = 2005
//константу невозсожно изменить после инициализации

//3

var count = 10

//count = "ten"
//переменная count автоматически стала Int после инициализиации. так как свифт - строго типизированный язык, мы не можем присваивать к числовому значению строковое


//Логические значения и условные операторы

//1

var num: Int = 0

if num > 0 {
    print("\(num) is positive")
} else if num < 0 {
    print("\(num) is negative")
} else {
    print("the number is zero")
}

//2

var userAge: UInt8 = 18

if userAge >= 18 {
    print("Access granted")
} else {
    print("Access denied")
}

