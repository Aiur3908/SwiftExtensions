//
//  DispatchQueue+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/2/11.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import Foundation

extension DispatchQueue {
  // This method will dispatch the `block` to self.
  // If `self` is the main queue, and current thread is main thread, the block
  // will be invoked immediately instead of being dispatched.
  func safeAsync(_ block: @escaping ()->()) {
    if self === DispatchQueue.main && Thread.isMainThread {
      block()
    } else {
      async { block() }
    }
  }
}
