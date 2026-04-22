class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var seenChar: Set<Character> = Set<Character>()
        var length = 0
        let arr = Array(s)
        for i in 0..<arr.count {
            while(seenChar.contains(arr[i])) {
                seenChar.remove(arr[left])
                left += 1
            }
            seenChar.insert(arr[i])
            length = max(i - left + 1, length)
        }
        return length
    }
}
