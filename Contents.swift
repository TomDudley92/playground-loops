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

func beerSong() -> String {
    
    var song = ""
    
    for num in (1...99).reversed() {
        song += "\n\(num) bottles of beer on the wall, \(num) bottles of beer. \nYou take one down and pass it around, \(num) bottles of beer on the the wall"
    }
    
    song += "\nNo more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall"
    
    return song
    
}

print(beerSong())
