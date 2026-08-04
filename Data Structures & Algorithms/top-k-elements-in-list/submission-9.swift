class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var hashMap = [Int: Int]()

        for num in nums {
            hashMap[num, default: 0] += 1
        }

        return Array(
            hashMap.sorted {
                $0.value > $1.value
            }
            .map { $0.key}
            .prefix(k)
        )
    }
}
