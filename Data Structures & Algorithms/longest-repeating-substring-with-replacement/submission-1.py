class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        map = {}
        left = 0
        count = 0
        length = 0
        for i in range(len(s)):
            map[s[i]] = map.get(s[i],0) + 1
            count = max(count,map[s[i]])
            while((i - left + 1) - count > k):
                map[s[left]] = map.get(s[left], 0) - 1
                if map[s[left]] == 0:
                    del map[s[left]]
                left += 1
            length = max(length,i - left + 1)
        return length
