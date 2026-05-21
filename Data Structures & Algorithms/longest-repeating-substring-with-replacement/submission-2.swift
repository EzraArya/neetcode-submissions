class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var chars = Array(s)
        var charSet = Set(s)
        var res = 0

        for c in charSet {
            var streak = 0, l = 0

            for r in 0..<chars.count {
                if chars[r] == c {
                    streak += 1
                }

                while (r - l + 1) - streak > k {
                    if chars[l] == c {
                        streak -= 1
                    }
                    l += 1
                }

                res = max(res, r - l + 1)
            }
        }

        return res
    }
}
