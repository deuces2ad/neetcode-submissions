class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var map: [Int: Int] = [0:1]
        var count = 0
        var runningSum = 0
        for i in 0..<nums.count {
            runningSum += nums[i]
            let leftOut = runningSum - k
            if let value = map[leftOut] {
                count += value
            }
            map[runningSum, default: 0] += 1
        }
        return count
    }
}
