class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)

        var left = 1
        for i in 0..<nums.count {
            res[i] *= left
            left *= nums[i]
        }

        var right = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            res[i] *= right
            right *= nums[i]
        }

        return res
    }
}