
//1
struct Point {
    var x: Int
    var y: Int
}

let point = Point(x: 5, y: 7)
print(point.x, point.y)

//2
struct Rectangle {
    var width: Int
    var height: Int
    func area() -> Int {
        width * height
    }
}

let rectangle = Rectangle(width: 3, height: 4)
print("rectangles area with width \(rectangle.width) and height \(rectangle.height) is \(rectangle.area())")

//3
struct Student {
    let name: String
    let grade: Double
    
    func isBetter(than: Student) -> Bool {
        grade > than.grade
    }
}

let student1 = Student(name: "John", grade: 3.8)
let student2 = Student(name: "Jane", grade: 3.9)

print(student1.isBetter(than: student2))

//4

struct User {
    var name: String
    var email: String?
    
    func checkEmail() {
        if let email = email {
            print(email)
        }
    }
}

let user1 = User(name: "Phil")
user1.checkEmail()

let user2 = User(name: "Bob", email: "bob@icloud.com")
user2.checkEmail()




