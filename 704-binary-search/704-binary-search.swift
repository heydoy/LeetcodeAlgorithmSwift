class Solution {
    /*
        숫자들이 오름차순으로 정렬되어 있음. 타겟이 있으면 index를 리턴하고 없으면 -1 리턴 
    */
    func search(_ nums: [Int], _ target: Int) -> Int {
                
        var from: Int = 0
        var to: Int = nums.count-1
        
        while from <= to {
            var mid: Int = (from + to) / 2
            
            if target == nums[mid] {
                return mid
            }
            else if target > nums[mid] {
                from = mid+1
            } else {
                to = mid-1
            }
            
        }
        return -1
    }
    
        
}