/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var templist1 = list1
        var templist2 = list2
        
        let resultHead: ListNode = ListNode()
        var temp = resultHead
        
        while templist1 != nil && templist2 != nil {
            let value1 = templist1!.val
            let value2 = templist2!.val
            
            if value1 > value2 {
                temp.next = templist2!
                templist2 = templist2?.next
            } else {
                temp.next = templist1!
                templist1 = templist1?.next
            }
            temp = temp.next!
            
        }
        temp.next = templist1 ?? templist2
        return resultHead.next
    }
}

