class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var count = 0, people = people.sorted(), l = 0, r = people.count - 1
        
        while l <= r {
            if people[l] + people[r] <= limit {
                l += 1
            }
            r -= 1
            count += 1
        }

        return count
    }
}
