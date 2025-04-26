import UIKit

//Абстракция

class CoffeeMachine {
    func makeCoffee(){
        grindBeans()
        boilWater()
        brewCoffee()
        print("Ваш кофе готов")
    }
    
    private func grindBeans(){
        print("Перемалываем зерна...")
    }
    private func boilWater(){
        print("Кипятим воду...")
    }
    private func brewCoffee(){
        print("Завариваем кофе...")
    }
}

var machine = CoffeeMachine()
machine.makeCoffee()
