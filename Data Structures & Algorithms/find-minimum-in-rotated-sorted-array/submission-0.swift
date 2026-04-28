class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        while(left < right) {
            let mid = left + (right - left) / 2
            if nums[right] < nums[mid] {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return nums[left]
    }
}
