class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hasSeen = Set<Int>()

        for num in nums {
            if hasSeen.contains(num) {
                return true
            }
            hasSeen.insert(num)
        }

        return false
    }
}
