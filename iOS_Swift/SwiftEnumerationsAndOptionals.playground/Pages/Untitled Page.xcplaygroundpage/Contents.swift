let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(day: String) -> String {
    switch day {
    case "Saturday", "Sunday": return "Weekend"
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "Not a valid day"
    }
}

func muteNotifications(day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

let result = weekdayOrWeekend(week[4])
let isMuted = muteNotifications(result)

enum Day: Int {
    case Monday = 1
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum DayType {
    case Weekday
    case Weekend
}

func weekdayOrWeekend(day: Day) -> DayType {
    switch day {
    case .Saturday, .Sunday: return .Weekend
    default: return .Weekday
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case .Weekend: return true
    case .Weekday: return false
    }
}

let dayType = weekdayOrWeekend(.Sunday)
let isWeekend = muteNotifications(dayType)

// Color Objects

import UIKit

enum ColorComponents {
    case RGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
        }
    }
}

ColorComponents.RGB(red: 61.0, green: 120.0, blue: 198.0, alpha:1.0).color()



// Raw Values

enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.10
    case Quarter = 0.25
}


let coins: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter]
var count: Int = 0
for case .Quarter in coins {
    count += 1
}

func totalValue(coins: [Coin]) -> Double {
    var total: Double = 0
    for coin in coins {
       total += coin.rawValue
    }
    return total
}

totalValue(coins)



enum HTTPMethod: String {
    case POST, GET, PUT, DELETE
}

HTTPMethod.GET.rawValue

enum HTTPStatusCodes: Int {
    case Continue = 100
    case Success = 200
    case Unauthorized = 401
    case Forbidden = 403
    case NotFound = 404
}

let statusCode  = 200
if let httpCode = HTTPStatusCodes(rawValue: statusCode) {
    print(httpCode)
}


















