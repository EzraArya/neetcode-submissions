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
        let chars = Array(str) 
        var i = 0

        while i < chars.count {
            var j = i  
            
            while chars[j] != "#" {
                j += 1
            }
            
            let lengthString = String(chars[i..<j])
            let length = Int(lengthString)! 
            
            let wordStart = j + 1
            let wordEnd = j + 1 + length
            let word = String(chars[wordStart..<wordEnd])
            
            res.append(word)
            
            i = wordEnd 
        }

        return res
    }
}
