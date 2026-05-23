class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minim = prices[0]
        var profit = 0

        for price in prices {
            minim = min(minim, price)
            profit = max(profit, price - minim)
        }

        return profit
    }
}
