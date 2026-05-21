class Solution:
    def isPalindrome(self, s: str) -> bool:
        st = ''.join([char.lower() for char in s if char.isalnum()])
        if st == st[::-1]:
            return True
        else:
            return False