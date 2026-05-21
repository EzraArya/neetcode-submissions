class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minSell = prices[0]
        var profit = 0

        for price in prices {
            minSell = min(price, minSell)
            profit = max(profit, price - minSell)
        }

        return profit
    }
}
