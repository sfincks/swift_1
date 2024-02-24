import UIKit

//1.Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
//Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).
enum Tea: Int{
    case black = 10
    case green = 15
    case red = 20
}
var order:[Tea] = [.black,.red,.green,.green,.black,.red]
func getSum(pricelist:[Tea: Int]){
for (index, price) in order.enumerated(){
    let cost = pricelist[price]
    print("Номер клиента: \(index), вид чая: \(price), стоимость: \(cost ?? 0)")
//    print (index,element)
//    for (key,value) in teaStore{
//        switch key{
//        case  "black" == order: print("pay: " + teaStore["black"])
//            print("customer number: " + element)
//            print("order: "+ orders[i] + " price: " + teaStore["black"])
//        }
    }
}
let pricelist = [Tea.black: 10, Tea.green: 15, Tea.red: 20]
getSum(pricelist: pricelist)


//2.Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
let a: [Int?] = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
//var b = a.compactMap{$0}.filter{$0 != 0 && $0 != 4}.sorted{$0<$1}

//3.Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
func makeArray(a:Int) ->[Int]{
    var array:[Int] = [1]
    for i in 1...a{
        array.append(array[i-1] * 2)
    }
    return array
}
//print(makeArray(a: 5))
