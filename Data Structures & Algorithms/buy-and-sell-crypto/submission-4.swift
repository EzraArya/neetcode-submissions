class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minSell = prices[0]
        var res = 0

        for price in prices {
            minSell = min(minSell, price)
            res = max(res, price - minSell)
        }

        return res
    }
}
