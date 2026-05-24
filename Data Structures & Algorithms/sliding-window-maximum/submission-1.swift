class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        var res = [Int]()

        for i in 0...(nums.count - k) {
            var maxi = nums[i]
            for j in i..<(i+k) {
                maxi = max(maxi, nums[j])
            }
            res.append(maxi)
        }

        return res
    }
}
