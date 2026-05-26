class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var res = [Int]()
        for (index, temp) in temperatures.enumerated() {
            var count = 0, i = index

            while i < temperatures.count {
                if temp < temperatures[i]  {
                    break
                } 
                i += 1      
                count += 1  
            }

            count = (i == temperatures.count) ? 0 : count
            res.append(count)
        }

        return res
    }
}
