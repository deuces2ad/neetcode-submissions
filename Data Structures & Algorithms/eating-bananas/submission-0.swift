class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var minSpeed = 1
        var maxSpeed = 0
        for num in piles {
            maxSpeed = max(maxSpeed,num)
        }

        while(minSpeed < maxSpeed) {
            let mid = minSpeed + (maxSpeed - minSpeed) / 2
            if canEat(piles,h,mid) {
                maxSpeed = mid
            } else {
                minSpeed = mid + 1
            }
        }
        return minSpeed
    }

    func canEat( _ arr: [Int], _ hr: Int, _ speed: Int) -> Bool {
        var totalhr = 0
        for num in arr {
            totalhr += (num + (speed - 1)) / speed
        }
        return totalhr <= hr
    }
}
