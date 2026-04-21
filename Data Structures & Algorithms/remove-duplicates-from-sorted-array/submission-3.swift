class Solution {
    func removeDuplicates(_ arr: inout [Int]) -> Int {
        var left = 0
        for i in 0..<arr.count {
            if arr[left] != arr[i] {
                left += 1
                arr.swapAt(left,i)
            } 
        }
        return left + 1
    }
}
