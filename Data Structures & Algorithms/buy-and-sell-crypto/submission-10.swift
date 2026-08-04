class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var start = prices[0]
        var res = 0

        for price in prices {
            start = min(start, price)
            res = max(res, price - start)
        }

        return res
    }
}
