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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        
        var result = ListNode()
        result.next = head
        var prev: ListNode? = result        
        
        while prev?.next != nil {
            if prev?.next?.val == val { 
                prev?.next = prev?.next?.next
            } else {
                prev = prev?.next
            }
        }
        return result.next
    }
}
