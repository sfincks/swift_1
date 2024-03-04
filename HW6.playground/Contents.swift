import UIKit

class PizzaCafe<T>{
    //1.
    enum Profession{
        case cashier
        case chef
    }
    struct Employee{
        var name: String
        var sallary: Double
        var position: Profession
    }
    
    enum FrenchFriesSize: Double {
        case small = 3
        case medium = 4
        case large = 5
        case XL = 6
    }
    struct FrenchFries {
        var price: Double
        var size: FrenchFriesSize
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
    //1.
    private var employeeArray: [Employee] = []
    //3.
    var tables: [Table] = []
    
    init(){
        self.tables.append(Table(seats: 3, cafe: PizzaCafe<Any>.self))
        self.tables.append(Table(seats: 4, cafe: PizzaCafe<Any>.self))
        self.tables.append(Table(seats: 5, cafe: PizzaCafe<Any>.self))
    }
    func addFastFood(newFastFood: T){
        fastFoodExemp.append(newFastFood)
    }
    init(fastFoodExemp: [T]) {
        self.fastFoodExemp = fastFoodExemp
    }
    //1.
    init(employee: [Employee]){
        self.employeeArray = employee
    }
    func addFEmployee(newEmployee: Employee){
        employeeArray.append(newEmployee)
    }
    func getAllFastFood() -> Array<T>{
        return fastFoodExemp
    }
    func printAllFood(){
        for (i,food) in fastFoodExemp.enumerated(){
            print("#\(i+1): \(food)")
        }
    }
    func printAllEmployees(){
        for (i,emp) in employeeArray.enumerated(){
            print("#\(i+1): \(emp)")
        }
    }
}
let standartFrenchFries = PizzaCafe<Any>.FrenchFries(price: PizzaCafe<Any>.FrenchFriesSize.medium.rawValue, size: .medium)
let calzone = PizzaCafe<Any>.Pizza(price: PizzaCafe<Any>.PizzaTypes.calzone.rawValue, type: .calzone, isFlat: false, toping: .cheese)

var pizzaCafe = PizzaCafe<Any>(fastFoodExemp: [standartFrenchFries,calzone])

//pizzaCafe.printAllFood()

let smallFrenchFries = PizzaCafe<Any>.FrenchFries(price: PizzaCafe<Any>.FrenchFriesSize.small.rawValue, size: .small)
pizzaCafe.addFastFood(newFastFood: smallFrenchFries)
//pizzaCafe.printAllFood()

protocol PizzaCafeProtocol {
    func openCafe(cafeExemp: PizzaCafe<Any>)
    func closeCafe(cafeExemp: PizzaCafe<Any>)
}
var cafe: [PizzaCafeProtocol] = [pizzaCafe]
extension PizzaCafe: PizzaCafeProtocol{
    func openCafe(cafeExemp: PizzaCafe<Any>) {
        print("We are open")
    }
    func closeCafe(cafeExemp: PizzaCafe<Any>) {
        print("We are closed")
    }
}
func subtraction <T:Numeric>(a: T,b:T)-> T{
    return a - b
}
//print(subtraction(a: 5, b: 3))
//print(subtraction(a: 5.7, b: 3.2))

//1.Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками


let chef = PizzaCafe<Any>.Employee(name: "Pite", sallary: 1500, position: .chef)
let cashier = PizzaCafe<Any>.Employee(name: "Ammy", sallary: 1200, position: .cashier)
var employees = PizzaCafe<Any>(employee: [chef,cashier])
//employees.printAllEmployees()

//2.Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе

class Table{
    var seats: Int
    var guests: Int = 0
    var cafe: PizzaCafe<Any>.Type
    
    init(seats: Int,cafe: PizzaCafe<Any>.Type) {
        self.seats = seats
        self.cafe = cafe
    }
    func seatForGuest(guest: Int) -> Bool{
        if seats >= guest {
            guests = guest
            return true
        }else{
            return false
        }
    }
    
}


//3.Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра

let restaurant = PizzaCafe<Any>()
restaurant.addFEmployee(newEmployee: chef)
restaurant.addFEmployee(newEmployee: cashier)

for table in restaurant.tables {
    let guests = Int.random(in: 1...5)
    if table.seatForGuest(guest: guests){
        print("Seated \(guests) guests at a table with \(table.seats) seats")
    } else {
        print("Not enough seats for \(guests) guests at a table with \(table.seats) seats")
    }
}

