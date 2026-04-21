class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var left = 0
        let arrS = Array(s)
        let arrT = Array(t)
        for i in 0..<arrT.count {
            if left < arrS.count && arrS[left] == arrT[i] {
                left += 1
            }
        }
        return left == arrS.count
    }
}
