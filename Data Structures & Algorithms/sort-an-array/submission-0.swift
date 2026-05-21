class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var res = Array(nums)

        for i in 0..<res.count {
            for j in (i+1)..<res.count {
                if res[i] >= res[j] {
                    var temp = res[i]
                    res[i] = res[j]
                    res[j] = temp
                }
            }
        }

        return res
    }
}
