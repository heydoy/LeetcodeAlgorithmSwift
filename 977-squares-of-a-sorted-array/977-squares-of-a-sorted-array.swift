class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for value in nums {
            result.append(value*value)
        }
        result.sort()
        return result
    }
}