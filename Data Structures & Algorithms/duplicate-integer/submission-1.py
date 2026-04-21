class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        map: Dict = {}
        for num in nums:
            map[num] = map.get(num, 0) + 1
        for (key,value) in map.items():
            if value >= 2:
                return True
        return False
        