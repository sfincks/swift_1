import UIKit

//1.Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
enum PizzaTypes {
    case margharita
    case pepperoni
    case chikenGarlic
    case pinaple
    case calzone
}
//2.Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
enum Topings: Int {
    case pepperoni = 3
    case tomatos = 2
    case sausages = 5
    case cheese = 4
    case sause = 1
}
struct Pizza {
    var price: Int
    var type: PizzaTypes
    var isFlat: Bool
    var toping: Topings
}
//3.Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class PizzaCafe{
    private var pizzaExemp: [Pizza] = []
    
    init(pizzaArray: [Pizza]) {
        self.pizzaExemp = pizzaArray
    }
    //4.Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
    func addPizza(newPizza: Pizza){
        self.pizzaExemp.append(newPizza)
    }
    
    func getAllPizzas(){
        for element in pizzaExemp{
            print(element)
        }
    }
    
}
//5.Создать экземпляр класса пиццерии и добавить в него несколько пицц.

let calzone = Pizza(price: 15, type: .calzone, isFlat: false, toping: .cheese)
let pepperoni = Pizza(price: 12, type: .pepperoni, isFlat: true, toping: .pepperoni)

var pizzaCafe = PizzaCafe(pizzaArray: [calzone,pepperoni])
pizzaCafe.getAllPizzas()
