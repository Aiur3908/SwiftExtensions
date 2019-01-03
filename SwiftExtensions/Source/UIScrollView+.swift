//
//  UIScrollView+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/1/3.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import UIKit

extension UIScrollView {

  /**
   Scroll to Top

   - Parameter animated: true to animate the transition at a constant velocity to the new offset, false to make the transition immediate.
   */
  func scrollToTop(animated: Bool) {
    self.setContentOffset(CGPoint.zero, animated: animated)
  }

  /**
   Scroll to Bottom

   - Parameter animated: true to animate the transition at a constant velocity to the new offset, false to make the transition immediate.
   */
  func scrollToBottom(animated: Bool) {
    let bottomOffset = CGPoint(x: 0, y: self.contentSize.height - self.bounds.size.height)
    self.setContentOffset(bottomOffset, animated: animated)
  }

}
