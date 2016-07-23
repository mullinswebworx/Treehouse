let x1 = 0
let y1 = 0

// Tuple

let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

// Struct

struct Point {
    let x: Int
    let y: Int
    
    // Initializer method
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    // Object Method
    func surroundingPoints(withRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        for xCoord in (x-range)...(x+range) {
            for yCoord in(y-range)...(y+range) {
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.surroundingPoints()

let coordinatePoint2 = Point(x:2, y:2)
coordinatePoint2.surroundingPoints()

// Class

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseHealth(factor: Int) {
     life -= factor
    }
}



