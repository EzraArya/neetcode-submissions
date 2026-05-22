class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minimum = prices[0]
        var profit = 0

        for price in prices {
            minimum = min(minimum, price)
            profit = max(profit, price - minimum)
        }

        return profit
    }
}
