let romanDictionary: [Int: String] = [1:"I", 4:"IV", 5:"V", 9:"IX", 10:"X", 40:"XL", 50:"L", 90:"XC", 100:"C", 400:"CD", 500:"D", 900:"CM", 1000:"M"]
let numbers = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
let romanNumbers = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]

var num = 10
var myString = ""

func appendData(num: Int, times: Int) {
    for _ in 1...times {
        myString.append(romanDictionary[num]!)
    }
}

while num > 0 {
    if num >= 1000 {
        appendData(num: 1000, times: num/1000)
        num = num%1000
    } else if num >= 900 {
        appendData(num: 900, times: num/900)
        num = num%900
    } else if num >= 500 {
        appendData(num: 500, times: num/500)
        num = num%500
    } else if num >= 400 {
        appendData(num: 400, times: num/400)
        num = num%400
    } else if num >= 100 {
        appendData(num: 100, times: num/100)
        num = num%100
    } else if num >= 90 {
        appendData(num: 90, times: num/90)
        num = num%90
    } else if num >= 50 {
        appendData(num: 50, times: num/50)
        num = num%50
    } else if num >= 40 {
        appendData(num: 40, times: num/40)
        num = num%40
    } else if num >= 10 {
        appendData(num: 10, times: num/10)
        num = num%10
    } else if num >= 9 {
        appendData(num: 9, times: num/9)
        num = num%9
    } else if num >= 5 {
        appendData(num: 5, times: num/5)
        num = num%5
    } else if num >= 4 {
        appendData(num: 4, times: num/4)
        num = num%4
    } else if num >= 1 {
        appendData(num: 1, times: num/1)
        num = num%1
    }
}
print(myString)
