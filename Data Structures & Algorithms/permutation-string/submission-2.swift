class Solution {
    func checkInclusion(_ s: String, _ t: String) -> Bool {
        var left = 0
        var mapS: [Character: Int] = [:]
        var mapT: [Character:Int] = [:]
        for ch in s {
            mapS[ch, default: 0] += 1
        }
        let arr = Array(t)
        for i in 0..<arr.count {
            mapT[arr[i], default: 0] += 1
            while(i - left + 1 > s.count) {
                mapT[arr[left], default:0] -= 1
                if mapT[arr[left]] == 0 {
                   mapT.removeValue(forKey: arr[left])
                }
                left += 1
            }
            if mapS == mapT {
                return true
            }
        }
        return false
    }
}
