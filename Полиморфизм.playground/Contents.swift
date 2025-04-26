import UIKit

//Полиморфизм

class Animal {
    func makeSound(){
        print("Животное издает звук")
    }
}
class Dog: Animal{
    
    override func makeSound() {
        print("Гав - Гав")
    }
}
class Cat: Animal{
    override func makeSound() {
        print("Мяу - Мяу")
    }
}

func playSound(animal: Animal){
    animal.makeSound()
}

var dog = Dog()
var cat = Cat()

playSound(animal: dog)
playSound(animal: cat)
