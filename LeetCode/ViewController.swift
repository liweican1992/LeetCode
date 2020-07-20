//
//  ViewController.swift
//  LeetCode
//
//  Created by 李伟灿 on 2019/9/23.
//  Copyright © 2019 YouDao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TwoSum
//        let array = TwoSum.twoSum([2, 7, 11, 15],9)
//        print(array)
        
//        let k = SingleNumber.singleNumber([4,1,2,1,2])
//        print(k)
        
        
        let node1 = TreeNode.init(5)
        let node2 = TreeNode.init(2)
        let node3 = TreeNode.init(3)
        let node4 = TreeNode.init(4)

        node1.right = node2
        node1.left = node4
        node2.left = node3

        let array = TreeNodeTest.postorderTraversal(node1)
        print(array)

        
    }


}

