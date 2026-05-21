class Solution:
    def isValid(self, s: str) -> bool:
        maps = {
            '}' : '{',
            ']' : '[',
            ')' : '('
        }
        stack = []
        for a in s:
            if a not in maps:
                stack.append(a)
                continue
            if not stack or stack[-1] != maps[a]:
                return False
            stack.pop()
        return not stack