class Solution {
    func maxArea(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        var water_cap = 0
        while(left < right) {
            var height = min(arr[left], arr[right])
            let cap = (right - left) * height
            water_cap = max(cap,water_cap)
            if arr[left] < arr[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return water_cap
    }
}
