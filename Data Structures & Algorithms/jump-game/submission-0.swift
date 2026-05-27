class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        let n = nums.count
        var dp = [Bool](repeating: false, count: n)
        dp[n - 1] = true

        for i in (0..<n - 1).reversed() {
            let end = min(n, i + nums[i] + 1)
            for j in (i + 1..<end) {
                if dp[j] {
                    dp[i] = true
                    break
                }
            }
        }
        return dp[0]
    }
}