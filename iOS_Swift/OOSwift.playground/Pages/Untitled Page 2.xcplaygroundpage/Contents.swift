//: [Previous](@previous)

struct User {
    var fullName :String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Jon Mullins", email: "km4gig@gmail.com", age: 44)

var anotherUser = someUser

someUser.email = "fred@fred.com"

someUser.email
anotherUser.email


class Person {
    var fullName :String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tony Thompson", email: "tony@tony.com", age: 34)

var anotherPerson = somePerson

somePerson.email = "Blah@utut.com"
somePerson.email
anotherPerson.email



//: [Next](@next)
