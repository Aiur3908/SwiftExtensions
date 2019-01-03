//
//  UIViewController+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/1/3.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import UIKit

extension UIViewController {

  ///
  /// When user tapped anywhere, hide keyboard
  ///
  /// [Reference](https://stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift)
  ///
  func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(
      target: self,
      action: #selector(UIViewController.dismissKeyboard)
    )
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
  }

  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}

