class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [String: [String]]()

        for s in strs {
            let sorted = String(s.sorted())
            res[sorted, default: []].append(s)
        }

        return Array(res.values)
    }
}
