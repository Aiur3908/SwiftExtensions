//
//  Collection+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/1/16.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import Foundation

extension Collection {

  /// Returns the element at the specified index if it is within bounds, otherwise nil.
  subscript (safe index: Index) -> Element? {
    return indices.contains(index) ? self[index] : nil
  }

}

