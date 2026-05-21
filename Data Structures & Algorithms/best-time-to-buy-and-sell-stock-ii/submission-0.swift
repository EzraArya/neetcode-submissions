class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var nextBuy = 0, nextSell = 0
        var curBuy = 0, curSell = 0

        for i in stride(from: prices.count - 1, through: 0, by: -1) {
            curBuy = max(nextBuy, -prices[i] + nextSell)
            curSell = max(nextSell, prices[i] + nextBuy)
            nextBuy = curBuy
            nextSell = curSell
        }

        return curBuy
    }
}