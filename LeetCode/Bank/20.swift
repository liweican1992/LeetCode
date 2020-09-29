//
//  20.swift
//  LeetCode
//
//  Created by CC on 27.9.20.
//  Copyright © 2020 YouDao. All rights reserved.
//

import Foundation



func isValid(_ s: String) -> Bool {
    let dict: [Character : Character] = [")":"(","]":"[","}":"{"]
    var stackX: [Character] = []
    for c in s {
        if stackX.isEmpty {
            if dict.keys.contains(c) {
                return false
            }
            stackX.insert(c, at: 0)
            continue
        }
        if dict.keys.contains(c) {
            if stackX[0] == dict[c] {
                stackX.remove(at: 0)
                continue
            } else {
                stackX.insert(c, at: 0)
            }
        } else {
            stackX.insert(c, at: 0)
        }


    }

    return stackX.count == 0

}
