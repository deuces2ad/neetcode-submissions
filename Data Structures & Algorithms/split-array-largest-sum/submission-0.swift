class Solution {
    func splitArray(_ arr: [Int], _ k: Int) -> Int {
        var left = arr.max()!
        var right = arr.reduce(0,+)
        while(left < right) {
            let mid = left + (right - left) / 2
            if canSplitMore(arr,k, mid) {
                right = mid
            } else {
                left = mid + 1
            }
        }
        return left

    }
    func canSplitMore( _ arr: [Int], _ k: Int, _ mid: Int) -> Bool {
        var countSplit = 1
        var sum = 0
        for num in arr {
            if sum + num > mid {
                countSplit += 1
                sum = num
            } else {
                sum += num
            }
        }
        return countSplit <= k
    }
}
