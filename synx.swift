// Синтаксис swift
// присваивание
let a: Int = 5 // let - константа
var b: Int = 5 // var - переменная 

// арифметика
+ - * / % // аримфетика
+= -= *= /= // a += 

// сравнение и диапазоны 
< > <= >= == // сравнение
!= || && // логические операторы
var a = ...7 // диапозон от 4 до 7, включая 7 и отрицательные значения 
var b = 4...7 // диапозон от 4 до 7, включая 4 и 7
var c = 4...<7 //диапозон от 4 до 7, включая 4 и исключая 7
var c = 4... //диапозон от 4 , включая 4 и далее
var c = ...<7 //диапозон  до 7, включая отрицательные и исключая 7

// Ветвления
if условие {
    действие
}
// пример
if b>10{
    b *= 2
}
// if - else if - else
if условие {
    действие
} else if условие {
    действие if условие выше false
} else {
    действие if все условия false
}
// тернанрный оператор // условие ? если правда : если ложь
let a = переменная > условие ? true : false
// пример
let a = count > 5 ? 10 : -10
// Сокращение тернарного оператора 
let a = 15
let b = a > 10 ? true : false
// можно сократить до
let b = a > 10

// switch - case
switch сравниваемое значение {
    case проверяемое значение : действие, если true
    default: если ни один case не прошёл
} //в case можно указывать несколько условий, а так несколько действий
// если нужно чтобы проверка case продолжилась, даже если case = true, то в действии нужно прописать fallthrough

// guard
guard условие else{
    действие, которое выполняется, если false
    return
}
действие, которое выполняется, если true

//for-in
for имя переменной из списка in список where дополнительное условие {
    действие
}

//while
while условие {
    действие
}

//repeat while
repeat {
    действие
} while условие

//операторы передачи управления
continue - если нужно перейти к следующей итерации
throw - используется при генерации ошибок
fallthrough - используется в switch case для перехода к следующему условию
break - прерывает цикл
return - выход из цикла