class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var res = "", arr1 = Array(word1), arr2 = Array(word2), i = 0, j = 0

        for i in 0..<max(arr1.count, arr2.count) {
            if i < arr1.count {
                res.append(arr1[i])
            }
            if i < arr2.count {
                res.append(arr2[i])
            }
        }

        return res
    }
}
