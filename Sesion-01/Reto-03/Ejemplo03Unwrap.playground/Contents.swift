import UIKit

let numbers = ["1", "2", "tres", "cuatro", "5", "6", "7", "8", "diez"]

let mapped: [Int?] = numbers.map { str in Int(str) }
print(mapped)

let compactMapped: [Int] = numbers.compactMap { str in Int(str) }
print(compactMapped)
