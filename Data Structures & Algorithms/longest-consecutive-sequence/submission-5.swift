class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var map: [Int: Bool] = [:]
        if nums.isEmpty {
            return 0
        }

        for num in nums {
            map[num] = false
        }
        var maxLength = 1

        for i in 0..<nums.count {
            var num = nums[i]
            if map[num] == true { continue }
            map[num] = true
            var nextNum = num + 1
            var length = 1
            while (map[nextNum] != nil && map[nextNum] == false) {
                length += 1
                map[nextNum] = true
                nextNum += 1
            }
            var prevNum = num - 1
            while(map[prevNum] != nil && map[prevNum] == false) {
                length += 1
                map[prevNum] = true
                prevNum -= 1
            }
            maxLength = max(maxLength, length)
        }
        return maxLength
    }
}
