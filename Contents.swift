import UIKit

// Given a coin enum which descrobes different coin values
// Write a function called getTotalValue(from:) that takes in an array
// of tuples of type(number: Int, coin: Coin), and returns the total value of all coins in cents.
//A tuple is
// These are raw values next to each coin name

enum Coin: Int, CaseIterable {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}

func getTotalValue(from tuples: [(numberOfcoins: Int, typeOfCoin: Coin)]) -> Int{
    
    var totalNumberofCents = 0
    
    for tuple in tuples {
// we are switching on our Coin, we use the number 1 becasuse it is the second value in the tuple
// we just decided to change it to type of coin since its easier to read, we access it through the tuple
        switch tuple.typeOfCoin {
        case .penny:
            totalNumberofCents += Coin.penny.rawValue *
            tuple.numberOfcoins
        case .nickle:
            totalNumberofCents += Coin.nickle.rawValue * tuple.numberOfcoins
        case .dime:
            totalNumberofCents += Coin.dime.rawValue * tuple.numberOfcoins
        case .quarter:
            totalNumberofCents += Coin.quarter.rawValue * tuple.numberOfcoins}
}
    return totalNumberofCents
}


// Your function here
// Uncomment the lines below to test your solution
// Conform it to the tuple
 let coinArr: [(Int, Coin)] = [
    (10, .penny),
    (15, .nickle),
    (3,  .quarter),
    (20, .penny),
    (3,  .dime),
    (7,  .quarter)
 ]
 let expectedTotal = 385
 let total = getTotalValue(from: coinArr)

