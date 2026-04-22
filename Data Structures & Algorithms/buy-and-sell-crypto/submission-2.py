class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        left = 0
        max_profit = 0
        for i in range(1,len(prices)):
            if prices[left] < prices[i]:
                max_profit = max(max_profit,prices[i] - prices[left])
            else:
                left = i
        return max_profit
        