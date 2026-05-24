class SquareHole {
    private let sideLength: Double

    init(_ sideLength: Double) {
        self.sideLength = sideLength
    }

    func canFit(_ square: Square) -> Bool {
        return sideLength >= square.getSideLength()
    }
}

class Square {
    private let sideLength: Double

    init(_ sideLength: Double = 0.0) {
        self.sideLength = sideLength
    }

    func getSideLength() -> Double {
        return sideLength
    }
}

class Circle {
    private let radius: Double

    init(_ radius: Double) {
        self.radius = radius
    }

    func getRadius() -> Double { return radius }
}

class CircleToSquareAdapter: Square {
    // Write your code here
    private let length: Double

    init(_ circle: Circle) {
        // Write your code here
        self.length = circle.getRadius()
    }

    override func getSideLength() -> Double {
        // Write your code here
        return length * 2
    }
}
