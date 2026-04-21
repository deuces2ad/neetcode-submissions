class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        map: Dict = {}
        for word in strs:
            arr = [0] * 26
            for ch in word:
                index = ord(ch) - ord("a")
                arr[index] += 1
            key = ""
            for i in range(len(arr)):
                key = key + f"{arr[i]}#"
            
            if key in map:
                map[key].append(word)
            else:
                map[key] = [word]
        return list(map.values())