class MinStack {
    private var stack = [Int]()

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
    }

    func pop() {
        stack.popLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        var temp = [Int]()
        var mini = stack.last!

        while !stack.isEmpty {
            mini = min(mini, stack.last!)
            temp.append(stack.removeLast())
        }

        while !temp.isEmpty {
            stack.append(temp.removeLast())
        }

        return mini
    }
}
