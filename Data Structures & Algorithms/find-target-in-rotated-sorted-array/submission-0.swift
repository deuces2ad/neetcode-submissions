class Solution {
    func search(_ arr: [Int], _ target: Int) -> Int {
        var left = 0
        var right = arr.count - 1
        while(left <= right) {
            let mid = left + (right - left) / 2
            if arr[mid] == target {
                return mid
            } 
            if arr[left] <= arr[mid] {
                if arr[left] <= target && target < arr[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if arr[mid] < target && target <= arr[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return -1

    }
}
