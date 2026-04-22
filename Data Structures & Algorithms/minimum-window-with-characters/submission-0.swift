class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        var mapS: [Character: Int] = [:]
        var mapT: [Character: Int] = [:]
        var minlenth = Int.max
        var left = 0
        var start = 0
        for ch in t {
            mapT[ch, default: 0] += 1
        }
        let arr = Array(s)
        for i in 0..<arr.count {
            mapS[arr[i], default:0] += 1
            while(contains(mapS,mapT)) {
                if i - left + 1 < minlenth {
                    minlenth = i - left + 1
                    start = left
                }
                mapS[arr[left], default:0] -= 1
                if mapS[arr[left]] == 0 {
                    mapS.removeValue(forKey: arr[left])
                }
                left += 1
            }
        }
        if minlenth == Int.max { return "" }
        return String(arr[start..<start + minlenth])
    }

    func contains( _ mapS: [Character:Int], _ mapT: [Character:Int]) -> Bool {
        for (key,value) in mapT {
            if mapS[key, default: 0] < value {
                return false
            }
        }
        return true
    }
}
