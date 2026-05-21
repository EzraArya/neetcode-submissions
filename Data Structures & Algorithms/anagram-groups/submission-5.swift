class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Sort kata2 -> ate, eat, tae -> aet
        // Group sesuai sorted stringnya

        var res = [String: [String]]()

        for s in strs {
            let sortedS = String(s.sorted())
            res[sortedS, default: []].append(s)
        }

        return Array(res.values)
    }
}
