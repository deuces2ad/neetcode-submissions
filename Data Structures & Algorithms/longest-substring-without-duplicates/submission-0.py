class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        left = 0
        seen_char = set()
        length = 0
        for i in range(len(s)):
            while(s[i] in seen_char):
                seen_char.remove(s[left])
                left += 1
            seen_char.add(s[i])
            length = max(i - left + 1,length)
        return length

                



        