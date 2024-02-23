import Foundation

// Массив
// Инициализация
var a: Array<Int>
var a:[Int]
// Пустой массив
var a = [Int]()
var b:[Int] = []
// пример + массив оционалов
var a:[Int] = [5,10,12]
var b:[Int?] = [5,nil,10,12]
// вывод типов
var d = [7.5,6.5,4]
print(type(of: d))
// создание дефолтного массива
var c = Array(repeating:"A",count:3) // будет создан масиив из 3-х А
// добавить в массив
a.append(5) // добавить значение к массиву в конец
a.append(contentsOf: [5,6,7]) // добавить массив к массиву
// нельзя добавлять элементы других типов
// добавит элемента в определeнное место
var a: [Int] = [5,4,6,2,4]
a.insert(7, at: 3) // получится [5,4,6,7,2,4] 7 - добавляемое 3 - позиция
// очистка массива
a.removeAll()
//удаление первого или последнего элемента
a.removeFirst()
a.removeLast()
// можно использовать для вытаскивания значений
var b = a.removeFirst()
var c = a.removeLast()
//удаление нескольких элементов
a.removeFirst(2) //удалит первые 2
a.removeLast(3) // удалит последние 3
// получение первого и последнего значения
print(a.first) //выводят опционалы
print(a.last)
//получение элемента по индексу
var b = a[1]
//получение диапозона
let b = a[1..3]
//min max
a.min()
a.max
//объединение массивов // только для одинаковых типов
var c = a + b
// замена элемента
a[1] = -4
//колличество элементов
a.count
//пустой ?
a.isEmpty

// итерации по массиву
for название элемента in массив {
    body
}

for i in a{
        print(i)
}

//чтобы вывести еще и индекс массива
for имя индекса, имя элемента in a.enumerated(){
    
}

for i,element in a.enumerated(){
    print(element + " " + String(i))
}
// вариативный параметр принимает множество знаяений или ни одного
Int...

// множества - коллекция нупорядоченных ээлементов, которые не повторяются
var a: Set<Int> = [1,2,3,4]
var b = Set<Int> ()

a.count
a.isEmpty

a.inser(element)
a.remove(element)
a.removeFirst()
a.removeLast()
a.contains(element)
for element in a {
    
}
//базовые операции
a.subtracting(b) //выведет элементы в а, которх нет в b
a.intersection(b) // выведет элементы общие элементы в a & b
a.union(b) // включит все элементы из a & b
a.symmetricDifference(b) // включит все элеметы не повторяющиеся в a & b
// сравнение множеств
 // == позволяет узнать есть ли полноее совпадение
a.isSuperset(of: b) //повзоляет определить содержит ли множество все значения указанного множество
a.isSubset(of: b) // все ли значяения a есть в b
a.isDisjoint(with: b) // показывает отсутствие одинаковых значений
a.isStrictSubset(of: b)// является ли подмножеством
a.isStrictSuperset(of: b) //является ли надмножеством

// словарь - ключ и значение
var a: Dictionary<String,Int>()
var a: [String,Int] = [:]
var a: [String,Int] = ["coffee": 100,"iseCream":50]

a.count
a.isEmpty

b["cake"] = 150 //если нет значение, то добавит, а если есть, то обновит
a.updateValue(100, forKey: "cake")
a.removeValue(forKey: "cake")

for (key, element) in slovar{
    body
}

for (key,value) in a{
    print(key)
    print(value)
}

// замыкания блоки функциональности которые можно использзовать и передавать в коде
{(пепременные) -> ( тип возвращаемого значения) in
        body
}

let test = {(k:Int) -> String in
    let a = String(k * 7)
    print(a)
    return a
}
 test(7)

// передача замыкания в функцию

func testClosure (needMultiply: Int, test: (Int)-> String){
    test(needMultyply)
}
testClosure(needMultiply: 5, test: test)


let test = {
    print (7)
}

a.forEach {element in
    print(element)
}

//сокращение имен $0 - текущий элемент, $1- слежующий, $2- через один

a.map{$0 +1}

a.compactMap{Int($0)} //не использует опционы

a.sorted {$0 >$1} // сортировка по убыванию
a.filter{$0<6} // отсеивает всечто больше 6
a.reduce(4,+) // складывает  все элементы начиная с чсилаа 4
a.flatMap{$0} // распаковывает коллекцию в коллекции в одну коллекцию



