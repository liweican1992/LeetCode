//
//  155.swift
//  LeetCode
//
//  Created by CC on 27.9.20.
//  Copyright © 2020 YouDao. All rights reserved.
//

import Foundation

class MinStack {
    var stack = [Int]()
    var minStack = [Int]()
    /** initialize your data structure here. */
    init() {

    }

    func push(_ x: Int) {
        stack.append(x)
        if minStack.isEmpty {
            minStack.append(x)
        } else if minStack[0] > x {
            minStack.append(x)
        }
    }

    func pop() {
        let k = stack.popLast()
        if k == minStack.last {
           _ = minStack.popLast()
        }
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
