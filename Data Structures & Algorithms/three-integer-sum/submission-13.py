class Solution:
    def threeSum(self, arr: List[int]) -> List[List[int]]:
        arr.sort()
        ans: [[int]] = []
        for i in range(len(arr) - 2):
            if i > 0 and arr[i] == arr[i - 1]:
                continue
            left = i + 1
            right = len(arr) - 1
            while(left < right):
                curr_sum = arr[i] + arr[left] + arr[right]
                if curr_sum == 0:
                    ans.append([arr[i],arr[left], arr[right]])
                    while(left < right and arr[left] == arr[left + 1]):
                        left += 1
                    while(left < right and arr[right] == arr[right - 1]):
                        right -= 1
                    left += 1
                    right -= 1
                elif curr_sum < 0:
                    left += 1
                else:
                    right -= 1
        return ans


