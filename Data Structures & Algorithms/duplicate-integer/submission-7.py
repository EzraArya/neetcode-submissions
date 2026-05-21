class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        seen = []
        for a in nums:
            if a in seen:
                return True
            else :
                seen.append(a)
        return False