class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var freq1 = [Character: Int](), freq2 = [Character: Int]()

        for c in s {
            freq1[c, default: 0] += 1
        }

        for c in t {
            freq2[c, default: 0] += 1
        }

        return freq1 == freq2
    }
}
