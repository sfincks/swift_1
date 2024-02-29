import UIKit

//1.Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
//2.Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
//3.Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class PizzaCafe{
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
    private var pizzaExemp: [Pizza] = []
    
    init(pizzaArray: [Pizza]) {
        self.pizzaExemp = pizzaArray
    }
    //4.Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.
    func addPizza(newPizza: Pizza){
        pizzaExemp.append(newPizza)
    }
    
    func getAllPizzas(){
        for element in pizzaExemp{
            print(element)
        }
    }
    
}
//5.Создать экземпляр класса пиццерии и добавить в него несколько пицц.

let calzone = PizzaCafe.Pizza(price: 15, type: .calzone, isFlat: false, toping: .cheese)
let pepperoni = PizzaCafe.Pizza(price: 12, type: .pepperoni, isFlat: true, toping: .pepperoni)

var pizzaCafe = PizzaCafe(pizzaArray: [calzone,pepperoni])
pizzaCafe.getAllPizzas()
