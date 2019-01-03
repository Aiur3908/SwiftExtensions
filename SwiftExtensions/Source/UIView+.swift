//
//  UIView+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/1/3.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import UIKit

infix operator ====
infix operator ======

extension UIView {
  ///
  /// Add top left right bottom alignment constraints to superView.
  ///
  ///
  /// Example:
  ///
  ///     let superView = UIView()
  ///     let childView = UIView()
  ///     superView.addSubview(childView)
  ///     childView ==== superView
  ///
  ///
  static func ==== (view: UIView, superView: UIView) {
    if view.superview != superView {
      return
    }

    view.translatesAutoresizingMaskIntoConstraints = false
    view.topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
    view.leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
    view.rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
    view.bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
  }

  ///
  /// Add top left right bottom alignment constraints to superView, and width,
  /// height equal to superView
  ///
  ///
  /// Example:
  ///
  ///     let superView = UIView()
  ///     let childView = UIView()
  ///     superView.addSubview(childView)
  ///     childView ====== superView
  ///
  ///
  static func ====== (view: UIView, superView: UIView) {
    if view.superview != superView {
      return
    }
    view ==== superView
    view.widthAnchor.constraint(equalTo: superView.widthAnchor).isActive = true
    view.heightAnchor.constraint(equalTo: superView.heightAnchor).isActive = true
  }

  /// Remove all subViews
  func removeAllSubViews() {
    self.subviews.forEach({ $0.removeFromSuperview() })
  }
  
}
