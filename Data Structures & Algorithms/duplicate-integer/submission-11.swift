class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var seen: [Int] = []
        for num in nums {
            if seen.contains(num) {
                return true
            }
            seen.append(num)
        }
        return false
    }
}
