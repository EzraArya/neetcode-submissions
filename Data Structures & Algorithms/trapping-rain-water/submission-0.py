class Solution:
    def trap(self, height: List[int]) -> int:
        l, r = 0, len(height) - 1
        leftMx, rightMx = height[l], height[r]
        res = 0
        while l< r:
            if leftMx < rightMx:
                l += 1
                leftMx = max(leftMx, height[l])
                res += leftMx - height[l]
            else:
                r -= 1
                rightMx = max(rightMx, height[r])
                res += rightMx - height[r]
        return res
            