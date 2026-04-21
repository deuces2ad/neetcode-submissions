class Solution {
    func trap(_ arr: [Int]) -> Int {
        var water_cap = 0
        var left = 0
        var left_max = 0
        var right = arr.count - 1
        var right_max = 0
        while (left < right) {
            if arr[left] < arr[right] {
                if left_max < arr[left] {
                    left_max = arr[left]
                } else {
                    water_cap += left_max - arr[left]
                }
                left += 1
            } else {
                if right_max < arr[right]{
                    right_max = arr[right]
                } else {
                    water_cap += right_max - arr[right]
                }
                right -= 1
            }
        }
        return water_cap
    }
}
