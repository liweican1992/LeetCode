//
//  TreeNode.swift
//  LeetCode
//
//  Created by 李伟灿 on 2019/9/24.
//  Copyright © 2019 YouDao. All rights reserved.
//

import Foundation

/**
 Given a binary tree, return the preorder traversal of its nodes' values.
 
 Example:
 
 Input: [1,null,2,3]
 1
 \
 2
 /
 3
 
 Output: [1,2,3]
 Follow up: Recursive solution is trivial, could you do it iteratively?
 
 **/


public class TreeNode {
    public var value: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

class TreeNodeTest {
    // root left right
    static func preorderTraversal(_ root: TreeNode?) -> [Int] {
        
        if let tree = root {
            var array :[Int] = []
            array.append(tree.value)
            array += preorderTraversal(root?.left)
            array += preorderTraversal(root?.right)
            return array
        }
        return []
    }
    
    // left root right
    static func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        if let tree = root {
            var array :[Int] = []
            array += inorderTraversal(root?.left)
            array.append(tree.value)
            array += inorderTraversal(root?.right)
            return array
        }
        return []
    }
    
    static func postorderTraversal(_ root: TreeNode?) -> [Int] {
        
        if let tree = root {
            var array :[Int] = []
            array += postorderTraversal(root?.left)
            array += postorderTraversal(root?.right)
            array.append(tree.value)
            return array
        }
        return []
    }
    
}

