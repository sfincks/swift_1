import UIKit

//1.В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.
class PizzaCafe<T>{
    
    
    enum Size {
        case small
        case medium
        case large
        case XL
    }
    struct FrenchFries {
        var price: Double
        var size: Size
    }
    
    enum PizzaTypes: Double{
        case margharita = 12
        case pepperoni = 14
        case chikenGarlic = 13
        case pinaple = 11
        case calzone = 15
    }
    struct Pizza {
        var price: Double
        var type: PizzaTypes
        var isFlat: Bool
        var toping: Topings
    }
    enum Topings: Int {
        case pepperoni = 3
        case tomatos = 2
        case sausages = 5
        case cheese = 4
        case sause = 1
    }
    private var fastFoodExemp: [T] = []
    
    init(fastFoodArray: [T]) {
        self.fastFoodExemp = fastFoodArray
    }
    //2.Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
    func addFastFood(newFastFood: T){
        fastFoodExemp.append(newFastFood)
    }
    
    func getAllFastFood() -> Array<T>{
        return fastFoodExemp
    }
    func printAllFood(){
        for (i,food) in fastFoodExemp.enumerated(){
            print("#\(i+1): \(food)")
        }
    }
}
let standartFrenchFries = PizzaCafe<Any>.FrenchFries(price: 4, size: .medium)
let calzone = PizzaCafe<Any>.Pizza(price: 15, type: .calzone, isFlat: false, toping: .cheese)

var pizzaCafe = PizzaCafe(fastFoodArray: [standartFrenchFries,calzone])
pizzaCafe.printAllFood()
//2.
let smallFrenchFries = PizzaCafe<Any>.FrenchFries(price: 3, size: .small)
pizzaCafe.addFastFood(newFastFood: smallFrenchFries)
pizzaCafe.printAllFood()
//3.Создайте протокол, в котором будут содержаться функции открытия и закрытия.
protocol PizzaCafeProtocol {
    func openCafe(cafeExemp: PizzaCafe<Any>)
    func closeCafe(cafeExemp: PizzaCafe<Any>)
}
var cafe: [PizzaCafeProtocol] = [pizzaCafe]
//4.Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.
extension PizzaCafe: PizzaCafeProtocol{
    func openCafe(cafeExemp: PizzaCafe<Any>) {
        print("We are open")
    }
    func closeCafe(cafeExemp: PizzaCafe<Any>) {
        print("We are closed")
    }
}
//5.Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.
func subtraction <T:Numeric>(a: T,b:T)-> T{
    return a - b
}
print(subtraction(a: 5, b: 3))
print(subtraction(a: 5.7, b: 3.2))
