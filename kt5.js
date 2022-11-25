// Задача 1

    let obj = { 
price1: 100, 
price2: 150, 
price3: 200, 
price4: 100,
price5: 150, 
}

function sum(prices) {

    let sum = 0
    for (let price of Object.values(prices)) {
      sum += price
    }
    return sum
  }
  
console.log(sum(obj))

// Задан массив, элементы которого передают объекты. Напишите программу, которая преобразует каждый объект в массиве в новый массив, который будет содержать только значений свойств. 
// Пример:
let array = [ 
{id: 1, name: 'apple'}, 
{id: 2, name: 'watermelon'}, 
{id: 3, name: 'qiwi'}, 
{id: 4, name: 'lemon'} 
]

// Результат:
// [
// [1,"apple"],
// [2,"watermelon"],
// [3,"qiwi"],
// [4,"lemon"]
// ]

function elems (ids){
    let res = []
    for(let id of Object.values(ids)){
        res += Object.id
    }
    return res
}

console.log(elems(array))