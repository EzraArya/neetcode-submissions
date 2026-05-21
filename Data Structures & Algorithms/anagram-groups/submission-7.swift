class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var freq = [String: [String]]()

        for str in strs {
            let sortedS = String(str.sorted())
            freq[sortedS, default: []].append(str)
        }

        return Array(freq.values)
    }
}
