class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var charSet = Set<Character>()
        var maxCount = 0
        var l = 0
        var chars = Array(s)

        for r in 0..<chars.count {
            while charSet.contains(chars[r]) {
                charSet.remove(chars[l])
                l += 1
            }

            charSet.insert(chars[r])
            maxCount = max(maxCount, r - l + 1)
        }

        return maxCount
    }
}
