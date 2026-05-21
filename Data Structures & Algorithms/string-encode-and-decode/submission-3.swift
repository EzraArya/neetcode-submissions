class Solution {

    func encode(_ strs: [String]) -> String {
        var res = ""
        for s in strs {
            res += "\(s.count)#\(s)"
        }
        return res
    }

    func decode(_ str: String) -> [String] {
        var res = [String]()
        var chars = Array(str)
        var i = 0

        while i < chars.count {
            var j = i

            while chars[j] != "#" {
                j += 1
            }

            let length = Int(String(chars[i..<j]))!
            let word = String(chars[(j+1)..<(j+1+length)])
            res.append(word)
            i = j + 1 + length
        }

        return res
    }
}
