class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        guard nums.count >= 4 else { return [] }
        let nums = nums.sorted()
        var res = Set<[Int]>()

        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                var l = j+1, r = nums.count - 1, a = nums[i], b = nums[j]
                while l < r {
                    let c = nums[l], d = nums[r], sum = a + b + c + d
                    if sum == target {
                        res.insert([a, b, c, d])
                        l += 1
                        r -= 1
                    } else if sum < target {
                        l += 1
                    } else {
                        r -= 1
                    }
                }
            }
        }

        return Array(res)
    }
}
