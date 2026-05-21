class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var res = 0
        var l = 0, r = heights.count - 1

        while l < r {
            let area = min(heights[l], heights[r]) * (r - l)

            res = max(res, area)

            if heights[l] <= heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return res
    }
}
