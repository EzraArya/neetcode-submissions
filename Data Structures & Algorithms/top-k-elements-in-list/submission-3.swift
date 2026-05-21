class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq = [Int: Int]()

        for num in nums {
            freq[num, default: 0] += 1
        }

        let sorted = freq.keys.sorted {freq[$0]! > freq[$1]!}

        return Array(sorted.prefix(k))
    }
}
