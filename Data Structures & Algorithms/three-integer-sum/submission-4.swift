class Solution {
    func threeSum(_ arr: [Int]) -> [[Int]] {
        var ans: [[Int]] = []
        let arr = arr.sorted()
        for i in 0..<arr.count - 2 {
            if i > 0 && arr[i] == arr[i - 1] { continue }
            var left = i + 1
            var right = arr.count - 1

            while (left < right) {
                let sum = arr[left] + arr[right] + arr[i]
                if sum == 0 {
                    ans.append([arr[i], arr[left], arr[right]])
                    while left < right && arr[left] == arr[left + 1] { left += 1 }
                    while left < right && arr[right] == arr[right - 1] { right -= 1 }
                    left += 1
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return ans

    }
}
