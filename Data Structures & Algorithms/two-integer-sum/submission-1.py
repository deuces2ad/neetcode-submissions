class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        map: Dict = {}
        for i in range(len(nums)):
            num = target - nums[i]
            if num in map:
                return [map[num],i]
            map[nums[i]] = i
        return []
        
        

        