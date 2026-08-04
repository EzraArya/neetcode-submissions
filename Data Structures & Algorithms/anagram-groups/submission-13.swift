class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashMap = [String: [String]]()

        for s in strs {
            let sorted = String(s.sorted())
            hashMap[sorted, default: []].append(s)
        }

        return Array(hashMap.values)
    }
}
