class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map: [Int:Int] = [:]
        var ans: [Int] = []
        for num in nums {
            map[num,default: 0] += 1
        }
        var arr = map.map{ ($0.key,$0.value)}
        sort(&arr)

        for i in 0..<k {
            ans.append(arr[i].0)
        }
        return ans

    }

    func sort( _ arr: inout [(Int,Int)]){
        for i in 0..<arr.count {
            for j in (i + 1)..<arr.count {
                if arr[i].1 < arr[j].1 {
                    arr.swapAt(i,j)
                }
            }
        }
    }
}
