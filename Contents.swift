import UIKit

let arrayOfNums = [1, 2, 45, 43, 63, 23, 123, 3]
let array = [1...99]

var totalOfNum = 0

for number in arrayOfNums {
    totalOfNum += number
    print(number)
}

print(totalOfNum)

//This prints even numbers UP TO AND INCLUDING 10
for num in 1...10 where num % 2 == 0 {
    print(num)
}

//This prints even numbers UP TO 10
for num in 1..<10 where num % 2 == 0 {
    print(num)
}

var bottlesOfBeer = 99

for num in 1...99 {
    print("\(bottlesOfBeer) bottles of beer on the wall, \(bottlesOfBeer) bottles of beer")
    bottlesOfBeer -= 1

    if(bottlesOfBeer > 0) {
        print("You take one down and pass it around, \(bottlesOfBeer) bottles of beer on the the wall")
    } else {
        print("No more bottles of beer on the wall, no more bottles of beer")
        print("Go to the store and buy some more, 99 bottles of beer on the wall")
    }
}

func beerSong(requiredNumOfBottles totalNumberOfBottles: Int) -> String {

    var song = ""

    for num in (1...totalNumberOfBottles).reversed() {
        song += "\n\(num) bottles of beer on the wall, \(num) bottles of beer. \nYou take one down and pass it around, \(num - 1) bottles of beer on the the wall\n"
    }

    song += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall\n"

    return song

}

print(beerSong(requiredNumOfBottles: 99))

func fibonacci(until n: Int) {
    print(0)
    print(1)
    var num1 = 0
    var num2 = 1
    
    for _ in 0...n /*where num2 >= n*/ {
        let num3 = num1 + num2
        print (num3)
        num1 = num2
        num2 = num3
    }
}

fibonacci(until: 20)
