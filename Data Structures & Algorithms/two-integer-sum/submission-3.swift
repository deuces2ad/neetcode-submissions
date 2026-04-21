class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            let value = target - nums[i]
            if let index = map[value] {
                return [index,i]
            }
            map[nums[i]] = i
        }
        return []
    }
}
