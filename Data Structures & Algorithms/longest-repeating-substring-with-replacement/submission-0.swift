class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var left = 0
        var map: [Character: Int] = [:]
        let arr = Array(s)
        var length = 0
        var count = 0
        for i in 0..<arr.count {
            map[arr[i], default: 0] += 1
            count = max(map[arr[i]]!, count)
            while((i - left + 1) - count > k) {
                map[arr[left],default: 0] -= 1
                if map[arr[left]] == 0 {
                    map.removeValue(forKey:arr[left])
                }
                left += 1
            }
            length = max(length, i - left + 1)
        }
        return length
    }
}
