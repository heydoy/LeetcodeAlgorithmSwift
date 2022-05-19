class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var position = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                let temp = nums[i]
                nums[i] = nums[position]
                nums[position] = temp
                position += 1
            }
        }
     
    }
}


