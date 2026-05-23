class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var freq = [Int: Int]()
        for num in nums{
            freq[num, default: 0] += 1
        }

        let n = nums.count / 3
        return freq.filter{ $0.value > n }.map {$0.key}
    }
}
