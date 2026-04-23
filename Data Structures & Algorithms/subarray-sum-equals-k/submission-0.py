class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        map = {0:1}
        sum = 0
        count = 0
        for i in range(len(nums)):
            sum += nums[i]
            leftout = sum - k
            if leftout in map:
                count += map[leftout]
            map[sum] = map.get(sum,0) + 1
        return count


        