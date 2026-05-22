class NumMatrix {

    private var matrix: [[Int]]

    init(_ matrix: [[Int]]) {
        self.matrix = matrix
    }

    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var res = 0
        for r in row1...row2 {
            for c in col1...col2 {
                res += matrix[r][c]
            }
        }

        return res
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
