class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()

        for (i, n) in nums.enumerated() {
            let diff = target - n
            if let index = seen[diff] {
                return [index, i]
            }
            seen[n] = i
        }

        return []
    }
}
