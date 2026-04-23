class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        if len(nums) == 0:
            return 0
        maxLength = 1
        map = {}
        for num in nums:
            map[num] = False
        
        for num in nums:
            if map[num] == True:
                continue
            map[num] = True
            length = 1
            next_num = num + 1
            #fwd numbers
            while(next_num in map and map[next_num] == False):
                length += 1
                map[next_num] = True
                next_num += 1
            #back wwards num
            prev_num = num - 1
            while(prev_num in map and map[prev_num] == False):
                length += 1
                map[prev_num] = True
                prev_num -= 1
            maxLength = max(maxLength,length)
        return maxLength
            

                
        

        