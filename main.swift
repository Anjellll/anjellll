// №1

//      №1. Используя функции, условные операторы составить следующую программу прогноза погоды:
//
//      При вводе одного из городов в readLine (Бишкек, Чолпон-Ата, Талас, Ош, Джалал-Абад, Нарын, Баткен) выводить в итоге данные о погоде на ближайшие 3 дня в указанном городе



func weather(city: String) {
    switch city {
    case "Bishkek":
        print("saturday 28°C sunny")
        print("sunday 27°C cloudy")
        print("monday 28°C sunny")
    case "Cholpon-Ata":
        print("saturday 20°C sunny")
        print("sunday 19°C runny")
        print("monday 20°C sunny")
    case "Talas":
        print("saturday 23°C sunny")
        print("sunday 22°C runny")
        print("monday 23°C sunny")
    case "Osh":
        print("saturday 27°C sunny")

        print("sunday 27°C cloudy")
        print("monday 28°C sunny")
    case "Jalal-Abad":
        print("saturday 28°C sunny")
        print("sunday 29°C cloudy")
        print("monday 30°C sunny")
    case "Naryn":
        print("saturday 20°C cloudy")
        print("sunday 19°C cloudy")
        print("monday 21C° sunny")
    case "Batken":
        print("saturday 26°C sunny")
        print("sunday 26°C sunny")
        print("monday 27°C sunny")
    default:
        print("there is no sush city")

    }
}

print("Введите город")
let city = readLine()!

weather(city: city)

// разница  исп return и print


//func weather(city: String) -> String {
//    switch city {
//    case "Bishkek":
//        return "saturday 28°C sunny"
////        return "sunday 27°C cloudy"
////        return "monday 28°C sunny"
//      case "Cholpon-Ata":
//        return "saturday 20°C sunny"
////        return "sunday 19°C runny"
////        return "monday 20°C sunny"
////    case "Talas":
////        print("saturday 23°C sunny")
////        print("sunday 22°C runny")
////        print("monday 23°C sunny")
////    case "Osh":
////        print("saturday 27°C sunny")
////
////        print("sunday 27°C cloudy")
////        print("monday 28°C sunny")
////    case "Jalal-Abad":
////        print("saturday 28°C sunny")
////        print("sunday 29°C cloudy")
////        print("monday 30°C sunny")
////    case "Naryn":
////        print("saturday 20°C cloudy")
////        print("sunday 19°C cloudy")
////        print("monday 21C° sunny")
////    case "Batken":
////        print("saturday 26°C sunny")
////        print("sunday 26°C sunny")
////        print("monday 27°C sunny")
//    default:
//        return "there is no sush city"
//
//    }
//}
//
//print("Введите город")
//let city = readLine()!
//
//print(weather(city: city))



//№2. Используя условные операторы и фgigigjgункции создать программу, которая после ввода 5 наименований продуктов через readLine будет считать итоговую стоимость покупок (со скидкой в 5%)

//В итоге должно быть так: (например) Ваши товары:
//Кола - 50с
//Кефир - 65с
//Молоко - 40с
//Хлеб - 20с
//Салат - 100с
//
//275с + скидка 13,75c
//Итого: 261,25с



var total: Double = 0.0
let bread: Double = 30.0
let juice: Double = 100.0
let milk: Double = 50.0
let salad: Double = 90.0
let meat: Double = 200.0

func total(products: String){
  switch products{
case "Bread":
      print("Хлеб - \(bread)")
      total = total + bread
  case "Juice":
        print("Сок - \(juice)")
      total = total + juice
  case "Milk":
        print("Молоко - \(milk)")
      total = total + milk
  case "Salad":
        print("Салат - \(salad)")
      total = total + salad
  case "Meat":
        print("Мясо - \(meat)")
      total = total + meat
  default:
     print("такого нету")
       print(0)
  }
}

print("Введите продукт")
let buyOne = readLine()!
total(products: buyOne)

let buyTwo = readLine()!
total(products: buyTwo)

let buyThree = readLine()!
total(products: buyThree)

let buyFour = readLine()!
total(products: buyFour)

let buyfive = readLine()!
total(products: buyfive)



func percent5(){
    let sale = Double((total * 5 )) / 100
    print("цена без скидки \(total)")
    print("скидка \(sale)")
    let sum = Double (total) - sale
    print("итого \(sum)")
}
percent5()






//
//
//
////Доп.
////Доработать калькулятор с прошлого урока с помощью условных операторов и соединить всё с readLine (например сначала спрашиваете число, после чего “Какое действие совершить?”, затем второе число и т.д ) (максимум доступно 5 действий). И в итоге выдать итоговый результат используя заранее подготовленные функции для вычислений
//
//
//
print("Какое действие совершить?\n Доступно +/*-")
let textReadLine = readLine()

func test(num: Int, num2: Int){
    if textReadLine == "+" {
        print(num + num2)
    }else if textReadLine == "-" {
        print(num - num2)
    }else if textReadLine == "*" {
        print(num * num2)
    }else if textReadLine == "/" {
        print(num / num2)
    }else{
        print("Введите правильно")
    }
}
    print("Введите первое число")
   let firstNumReadLine = Int(readLine()!)
    print("Введите второе число")
   let secondNumReadLine = Int(readLine()!)

    test(num: firstNumReadLine!, num2: secondNumReadLine!)



////Создать функцию, которая будет принимать аргумент и проверять его четный или нет

func evenOrOddThan10(num: Int){
    if num % 2 == 0 {
        print("Это четное число")
    }else {
        print("Это нечетное число")
    }
}
print(evenOrOddThan10(num: 10))
print(evenOrOddThan10(num: 7))


//
////Создать функцию, которая будет проверять, число болшье 10 или нет
//
func moreThan10(num: Int) {
if num > 10 {
  print("Число больше 10")
}else if num < 10 {
  print("Число меньше 10")
}else if num == 10 {
  print("Число равно 10")
}else {
  print("Решение неверно")
}
}
print(moreThan10(num: 5)



