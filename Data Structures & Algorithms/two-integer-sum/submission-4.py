class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        map = {}
        for i in range(len(nums)):
            value = target - nums[i]
            if value in map:
                return [map[value],i]
            map[nums[i]] = i
        return [-1, -1]
