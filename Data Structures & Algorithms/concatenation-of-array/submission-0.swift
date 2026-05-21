class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var res: [Int] = []

        for _ in 0..<2 {
            for num in nums {
                res.append(num)
            }
        }

        return res
    }
}
