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
    var life: Int = 5
    var position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseHealth(factor: Int) {
     life -= factor
    }
}


class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.position, range: self.range, target: enemy.position) {
            while enemy.life > 0 {
                enemy.decreaseHealth(self.strength)
            }
            print("Enemy destroyed!")
        } else {
            print("The enemy is out of range")
        }
    }
    
    func inRange(position: Point, range: Int, target: Point) -> Bool {
        
        let availablePositions = position.surroundingPoints(withRange: range)
        for point in availablePositions {
            if (point.x == target.x) && (point.y == target.y) {
                return true
            }
        }
        
        return false
    }
}


let tower = Tower(x: 0, y: 0)
let enemy1 = Enemy(x: 1, y: 1)

let enemy2 = Enemy(x: 3, y: 4)

tower.fireAtEnemy(enemy1)
tower.fireAtEnemy(enemy2)





