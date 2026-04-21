class Solution:
    def numRescueBoats(self, people: List[int], limit: int) -> int:
        count = 0
        people.sort()
        left = 0
        right = len(people) - 1
        while(left <= right):
            sum = people[left] + people[right]   
            if sum <= limit:
                left += 1
                right -= 1
            elif sum > limit:
                right -= 1
            count += 1
        return count