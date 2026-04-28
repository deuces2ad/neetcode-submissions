class Solution {
    func mySqrt(_ x: Int) -> Int {
        var left = 0
        var right = x / 2
        if x == 1 {
            return 1
        }
        while(left <= right) {
            var mid = left + (right - left) / 2
            let ans = mid * mid
            if ans == x {
                return mid
            } else if ans < x {
                left = mid + 1
            } else { 
                right = mid - 1
            }
        }
        return right

    }
}
