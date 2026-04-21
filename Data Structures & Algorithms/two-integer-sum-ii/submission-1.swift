class Solution {
    func twoSum(_ arr: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = arr.count - 1
        while(left < right){
            let sum = arr[left] + arr[right]
            if sum == target {
                return [left + 1, right + 1]
            } else if (sum < target){
                left += 1
            } else {
                right -= 1
            }
        }
        return[]
    }
}
