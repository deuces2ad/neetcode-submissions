class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        minSpeed = 1
        maxSpeed = 0
        for num in piles:
            maxSpeed = max(maxSpeed, num)

        while minSpeed < maxSpeed:
            speed = int(minSpeed + (maxSpeed - minSpeed) / 2)
            if self.canEat(piles, h, speed):
                maxSpeed = speed
            else:
                minSpeed = speed + 1
        return minSpeed

    def canEat(self,piles: list[int], hr: int, speed: int) -> bool:
        totalhr = 0
        for num in piles:
            totalhr += int((num + (speed - 1)) / speed)
        return totalhr <= hr
