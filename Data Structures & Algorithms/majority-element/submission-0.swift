class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        return sorted[nums.count/2]
    }
}
