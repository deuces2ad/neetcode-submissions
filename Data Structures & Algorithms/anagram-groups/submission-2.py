class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        ans = {}
        for word in strs:
            arr = [0]*26
            for ch in word:
                index = ord(ch) - ord("a")
                arr[index] += 1
            
            key = ""
            for i in range(len(arr)):
                key = key + f"{arr[i]}#"  
 
            # ans[key] = ans.get(key,[]).append(word)
            if key not in ans:
                ans[key] = [word]
            else:
                ans[key].append(word)
        return list(ans.values())

        