class Solution:
    def checkInclusion(self, s: str, t: str) -> bool:
        mapS = {}
        mapT = {}
        left = 0
        for ch in s:
            mapS[ch] = mapS.get(ch,0) + 1
        
        for i in range(len(t)):
            mapT[t[i]] = mapT.get(t[i],0) + 1
            while (i - left + 1 > len(s)):
                mapT[t[left]] = mapT.get(t[left],0) - 1
                if mapT[t[left]] == 0:
                    del mapT[t[left]]
                left += 1
            if mapS == mapT:
                return True
        return False



        