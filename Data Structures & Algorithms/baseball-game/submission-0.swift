class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()
        for op in operations {
            if op == "+" {
                let top = stack.removeLast()
                let newTop = top + stack.last!
                stack.append(top)
                stack.append(newTop)
            } else if op == "D" {
                stack.append(2 * stack.last!)
            } else if op == "C" {
                stack.removeLast()
            } else {
                stack.append(Int(op)!)
            }
        }
        return stack.reduce(0, +)
    }
}