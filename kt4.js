// Задача 1

let phones = [ 
'590.423.4568', 
'650.124.7234', 
'650.507.9879', 
'011.44.1343.529268', 
'011.44.1344.478968', 
'011.44.1644.429267', 
'11.44.1343.52', 
'11.44.1643.52' ]

let result = []
for (let i = 0; i < phones.length; i++){
    let string = phones[i].substring(0, phones[i].lastIndexOf('.')+2)
    result[i] = string + '****'
}

console.log(result)

// Задача 2

	let cards = [ 
'4000 0012 0056 9499', 
'4000 0013 5456 7379', 
'4000 0014 1456 9869', 
'4000 0015 3466 7859', 
'4000 0016 3556 6899', 
'4000 0017 4456 4699'
]

let result = []

for (let i = 0; i < cards.length; i++){
    let a = cards[i].substring(0, 4)
    let b = cards[i].substring(cards[i].lastIndexOf(' ')+1)
    result[i] = a + '*****' + b
}

console.log(result)


// Задача 3

let prices = [ 
'Цена товара - 1200$', 
'Стоимость - 500$', 
'Цена не определена', '9999',
'Ценовая категория - больше 300$',
'Цена за услугу 500 EUR',
'150$',
 ]

function getInfo(prices){
    let result = [0,0]
    for(let i = 0; i < prices.length; i++)
    if (prices[i].endsWith('$')){
        result[1] += 1
    }
    for(let i = 0; i < prices.length; i++){
        if (prices[i].startsWith('Цена')){
            result[0] += 1
    }
}
    return result
}

console.log(getInfo(prices))


// Задача 4

function kingSayd(string){
    if (string.startsWith('Король сказал:')) {
        console.log (string)
    } else {
        string = 'Король сказал: ' + string
        console.log(string)
    }
}

kingSayd('сегодня хорошая погода')

// Задача 5

function iIstFridayToday(){
    let date = new Date()
    let day = date.getDay()
    if (day == 5){
        console.log('Cегодня пятница!')
    } else if (day == 6){
        console.log('Пятница была вчера')
    } else if (day == 4){
        console.log('Пятница будет завтра')
    } else {
        count = 5-day
        if (count == 5){
            end = ' дней'
        } else {
            end = ' дня'
        }
        console.log('Пятница будет через ' + count + end)
    }
}

iIstFridayToday()