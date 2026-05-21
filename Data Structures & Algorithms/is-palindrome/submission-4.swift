class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let res = s.lowercased().filter { $0.isNumber || $0.isLetter}
        return res == String(res.reversed())
    }
}
