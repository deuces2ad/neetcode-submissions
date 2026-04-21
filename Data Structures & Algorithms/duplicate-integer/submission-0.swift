class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var map: [Int:Int] = [:]
        for num in nums {
            map[num, default:0] += 1
        }

        for (_,value) in map {
            if value >= 2 {
                return true
            }
        }
        return false
    }
}
