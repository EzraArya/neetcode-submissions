class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let kMod = k % nums.count
        nums = Array(nums.suffix(kMod)) + Array(nums.prefix(nums.count - kMod))
    }
}
