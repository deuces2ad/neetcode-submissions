class Solution:
    def shipWithinDays(self, weights: List[int], days: int) -> int:
        minWeight = 1
        maxWeight = 0
        for weight in weights:
            maxWeight += weight
        
        for weight in weights:
            minWeight = max(minWeight,weight)
        
        while (minWeight < maxWeight):
            mid = minWeight + (maxWeight - minWeight ) // 2
            if self.canShip(weights,days,mid):
                maxWeight = mid
            else:
                minWeight = mid + 1
        return minWeight

    def canShip(self, arr: list[int], maxDays: int, midWeight: int) -> bool:
        minDays = 1
        maxWeight = 0
        for weight in arr:
            if maxWeight + weight > midWeight:
                minDays += 1
                maxWeight = 0
            maxWeight += weight
        return minDays <= maxDays

        