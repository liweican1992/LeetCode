//
//  Single Number.swift
//  LeetCode
//
//  Created by 李伟灿 on 2019/9/23.
//  Copyright © 2019 YouDao. All rights reserved.
//

import Foundation

/**
 Num 136
 https://leetcode-cn.com/problems/single-number/
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 
 Example 1:
 
 Input: [2,2,1]
 Output: 1
 
 Example 2:
 
 Input: [4,1,2,1,2]
 Output: 4

 **/

class SingleNumber {
    //按位异或  两个数相同就为0 最后剩下的就是singleNumber
    static func singleNumber(_ nums: [Int]) -> Int {
        var k = 0
        for value in nums {
            k = k ^ value;
        }
        return k;
    }
}
