class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = Set<[Int]>()
        var numSort = Array(nums.sorted())

        for i in 0..<numSort.count {
            for j in (i+1)..<numSort.count {
                for k in (j+1)..<numSort.count {
                    if numSort[i] + numSort[j] + numSort[k] == 0 {
                        res.insert([numSort[i], numSort[j], numSort[k]])
                    }
                }
            }
        }

        return Array(res)
    }
}
