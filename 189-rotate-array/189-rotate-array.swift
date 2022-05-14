class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        let length = nums.count
        let step = k % length
        print(length, step)
        
        nums = Array(nums[(length-step)...] + nums[..<(length-step)])    
    }
}