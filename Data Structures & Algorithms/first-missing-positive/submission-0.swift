class Solution {
    func firstMissingPositive(_ nums: inout [Int]) -> Int {
        var res = 1
        let store = Set(nums)
        
        
        while store.contains(res) {
            res += 1
        }
            

        return res
    }
}
