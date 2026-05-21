class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        hashSet = set()
        for a in nums:
            if a in hashSet:
                return True
            hashSet.add(a)
        return False