class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var maxProfit = 0
        for i in 1..<prices.count {
            if prices[left] < prices[i] {
                let profit = prices[i] - prices[left]
                maxProfit = max(profit,maxProfit)
            } else {
                left = i
            }
        }
        return maxProfit
    }
}
