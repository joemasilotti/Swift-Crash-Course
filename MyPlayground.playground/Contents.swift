// Static typing

var x = 1
x += 2

let name = "Joe Masilotti"
// name = "Duke Masilotti"

// x = "Joe Masilotti

// Optionals

let dictionary = [
    "breakfast": "eggs",
    "lunch": "sandwich",
    "dinner": "pasta"
]

let breakfast = dictionary["breakfast"]
// "2x " + breakfast

"2x " + dictionary["breakfast"]!
// "2x " + dictionary["snack"]!

if let eggs = breakfast {
    "2x " + eggs
}

if let breakfast {
    "2x \(breakfast)"
}

// Protocols

protocol Noisy {
    func makeNoise() -> String
}

// class Dog: Noisy

class Dog: Noisy {
    func makeNoise() -> String {
        return "Woof"
    }
}

class Cat: Noisy {
    func makeNoise() -> String {
        return "Meow"
    }
}

//let animals = [Dog(), Cat()]
//animals.forEach { animal in
    // print(animal.makeNoise())
//}

let animals: [Noisy] = [Dog(), Cat()]
animals.forEach { animal in
    print(animal.makeNoise())
}
