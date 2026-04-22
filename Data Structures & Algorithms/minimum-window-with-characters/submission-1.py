class Solution:
    def minWindow(self, s: str, t: str) -> str:
        left = 0
        start = 0
        mapS:dict = {}
        mapT:dict = {}
        miniLength = float('inf')
        for ch in t:
            mapT[ch] = mapT.get(ch,0) + 1
        
        for i in range(len(s)):
            mapS[s[i]] = mapS.get(s[i],0) + 1
            while self.contains(mapS, mapT): 
                if (i - left + 1 < miniLength):
                    miniLength = i - left + 1
                    start = left
                mapS[s[left]] = mapS.get(s[left],0) - 1
                if mapS[s[left]] == 0:
                    del mapS[s[left]]
                left += 1
        if miniLength == float('inf'):
            return ""
        return s[start:start + miniLength]

    def contains(self,mapS: dict, mapT:dict) -> bool:
         for key,value in mapT.items():
            if value > mapS.get(key,0):
                return False
         return True
 



        