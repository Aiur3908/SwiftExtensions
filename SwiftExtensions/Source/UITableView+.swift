//
//  UITableView+.swift
//  SwiftExtensions
//
//  Created by 游鴻斌 on 2019/2/11.
//  Copyright © 2019 JerryYou. All rights reserved.
//

import UIKit

extension UITableView {
  public func register(cellType: UITableViewCell.Type,
                       bundle: Bundle? = nil) {
    let className = String(describing: type(of: cellType))
    let nib = UINib(nibName: className, bundle: bundle)
    register(nib, forCellReuseIdentifier: className)
  }
}
