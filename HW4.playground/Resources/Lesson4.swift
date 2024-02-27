import Foundation

//  кортежи - набор значений, которыые могу рассматриваться как один объект
var coffee:(name:String,cost:Int) = ("Latte", 105)
var a = ("Latte",Int,true)
// получение значений
coffee.0 // latte
coffee.1 // 105
//присваивание
coffee.1 = 110
//получение значений
coffee.name
//использование в функции
func createCoffee (name:String,cost:Int) -> (String,Int){
    (name,cost)
}
let cappucino - createCoffee(name: "Cappucino", cost: 120)
//возвращение кортежа
func createCoffee (name:String,cost:Int) -> (name:String,cost:Int){
    (name:name,cost:cost)
}
let cappucino - createCoffee(name: "Cappucino", cost: 120)

//структуры - хранит структуры и их поведение
// структыру это как классы в джаве
struct <name> {
    body
}
struct Coffee {
    var  name : String
    var cost: Int
}
//создание экземпляра структры
let latte = Coffee(name: "Latte", cost: 110)
//свойства хранения
//если значение установлено как let, то ег потом нельзя будет изменить

//вычисляемые свойства - значения которое вычисляется
var\let name: type{
    get { //геттер
        //то что необходимо рассчитать
    }
    set(переданное значение){ //сеттер
        // что неоходимо сделать при утсновке значения
    }
}
//наблюдатели -следят за имзенением значений свойств
var name: type = defaultVar {
    willSet{} // вызывается перед вызвыаемым значением
    didSet{} // вызвывется после значения
}

// методы - функции внутри структур
struct Coffee {
    var name: String
    var isSugar: Bool
    var isIce: Bool
    var cost: Int = 110
    
    func getCoffee(){
        Print("Название: \(name), стоимость: \(cost)")
    }
}
//mutating - используется для функций меняющих структуру структуры
mutating func name (){
    body
}
mutating func changeNAme (name:String){
    self.name = name
}

// инициализатор - подготовительный этап для созданий экзепляра класса структуры перечисления
init (variables){
    //инициализатор
}

enum CoffeeSize {
    case s
    case m
    case l
    
    init(size: String) {
        switch size {
        case "small": self = .s
        case "medium": self = .m
        case "large": self = .l
        default: self = .m
        }
    }
}
let size = CoffeeSize(size: "large")
print(size)

// уровни доступа
<уровень доступа><переменная>
<уровень доступа><функция>

open -  доступ и переопределение в родном модуле и импортирующем модуле/ исп для классов их свойств и методов
public - разрешает доступ и переопределение в родном модуле а импортирующем разрешен только доступ
internal - разрешает использованиеи объекта внутри любого файла исходного модуля но не в файлах модуля
fileprivate - использование объекта только в пределах файла
private - использование объекта только в пределах области реализации

// классы
class Cafe{
    private var coffee: [Coffee] = []
    
    init (coffee: [Coffee]){
        self.coffee = coffee
    }
    
    func addCoffee (coffee: Coffee){
        self.coffee.append(coffee) // ошибка доступа
    }
}
// convenience init - вспомогательный инициализатор в котором можно определить вызов основного инициализатора с некотоорыми  параметрами по умолчанию

// ленивое свойство - начальное значение которого не вычисляется до первого использования
lazy variable

