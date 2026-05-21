class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Hashmap berdasarkan persamaan kata yang disorted

        var res = [String: [String]]()

        for str in strs {
            var sortedStr = String(str.sorted())
            res[sortedStr, default: []].append(str)
        }

        return Array(res.values)
    }
}
