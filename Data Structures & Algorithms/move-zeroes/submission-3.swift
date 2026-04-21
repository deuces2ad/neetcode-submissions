class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(left,i)
                left += 1
            }
        }
    }
}
