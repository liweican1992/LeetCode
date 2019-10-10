//
//  TwoSum.swift
//  LeetCode
//
//  Created by 李伟灿 on 2019/9/23.
//  Copyright © 2019 YouDao. All rights reserved.
//

import UIKit

/**
 Num 01
 https://leetcode-cn.com/problems/two-sum/
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 **/

class TwoSum {
    
    //暴力法 时间复杂度 O(n²)
    
//    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        for (index, value) in nums.enumerated() {
//            for k in (index + 1)..<nums.count {
//                let subValue = nums[k];
//                if (value + subValue == target) {
//                    return [index, k];
//                }
//            }
//        }
//        return []
//    }
    
    //两边hashmap 时间复杂度O(n)
    
//    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var hashTable : Dictionary<Int, Int> = [:]
//        for (index, value) in nums.enumerated() {
//            hashTable.updateValue(index, forKey: value)
//        }
//        for (index, value) in nums.enumerated() {
//            let targetNum = target - value
//            if hashTable.keys.contains(targetNum) && hashTable[targetNum] != index {
//                let k = hashTable[targetNum]
//                return [index, k!]
//            }
//        }
//        return []
//    }
    
    //一遍hash
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashTable: Dictionary<Int, Int> = [:]
        for (index, value) in nums.enumerated() {
            let targetNum = target - value;
            if hashTable.keys.contains(targetNum) {
                return [hashTable[targetNum]!, index]
            }
            hashTable.updateValue(index, forKey:value)
        }
        return []
    }
}
