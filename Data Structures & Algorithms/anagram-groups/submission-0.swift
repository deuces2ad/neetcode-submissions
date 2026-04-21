class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans: [String:[String]] = [:]
        for str in strs {
            var arr = Array(repeating: 0, count: 26)
            for ch in str {
                let index = Int(ch.asciiValue! - Character("a").asciiValue!)
                arr[index] += 1
            }
            var newKey = ""
            for num in arr {
                newKey = newKey + "\(num)#"
            }
            
            ans[newKey, default: []].append(str)
        }
        return Array(ans.values)
    }
}
