import UIKit

// ENUMS
enum TemperatureType {
  case cold, hot
}

enum BeerType {
  case light, dark
}

enum Taste {
  case sweet, bitter
}

// PROTOCOLS
protocol Beverage {
  var name: String { get set }
  var volume: Float { get set }
}

protocol Alcoholic {
  var alcoholPercentage: Float { get set }
}

protocol Temperature {
  var temperature: TemperatureType { get set }
}

protocol Tasetable {
  var taste: Taste { get set }
}

protocol HotDrink: Beverage, Tasetable, Temperature  {
  
}

//STRUCTS
struct Beer: Beverage, Alcoholic {
  var type: BeerType
  var name: String
  var volume: Float
  var alcoholPercentage: Float
}

struct Soda: Beverage {
  var name: String
  var volume: Float
}

struct Coffee: HotDrink {
  var name: String
  var volume: Float
  var taste: Taste
  var temperature: TemperatureType
}

struct Chocolate: HotDrink {
  var name: String
  var volume: Float
  var taste: Taste
  var temperature: TemperatureType
}
