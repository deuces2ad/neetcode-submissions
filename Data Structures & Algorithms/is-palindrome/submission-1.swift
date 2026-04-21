class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter{ $0.isNumber || $0.isLetter }
        var left = 0
        var right = str.count - 1
        var arr = Array(str)
        while(left < right){
            if arr[left] == arr[right] {
                left += 1
                right -= 1
            } else {
                return false
            }
        }
        return true
    }
}
