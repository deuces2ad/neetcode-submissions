class Solution:
    def maxArea(self, arr: List[int]) -> int:
        left = 0
        right = len(arr) - 1
        water_cap = 0

        while(left <right ):
            height = min(arr[left], arr[right])
            cap = (right - left) * height
            water_cap = max(water_cap,cap)
            if arr[left] < arr[right]:
                left += 1
            else:
                right -= 1
        return water_cap

        