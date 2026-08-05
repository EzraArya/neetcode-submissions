class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0, r = numbers.count - 1

        while l < r {
            let curr = numbers[l] + numbers[r]
            if curr > target {
                r -= 1
            } else if curr < target {
                l += 1
            } else {
                return [l+1, r+1]
            }
        }

        return []
    }
}
