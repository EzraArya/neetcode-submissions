class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minBuy = prices[0]

        for price in prices {
            maxProfit = max(maxProfit, price - minBuy)
            minBuy = min(minBuy, price)
        } 

        return maxProfit
    }
}
