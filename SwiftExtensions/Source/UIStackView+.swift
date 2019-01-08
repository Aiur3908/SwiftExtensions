//
//  UIStackView+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/1/8.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import UIKit

extension UIStackView {

  func removeAllArrangedSubviews() {
    arrangedSubviews.forEach({ $0.removeFromSuperview() })
  }

}
