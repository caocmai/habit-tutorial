//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Cao Mai on 2/24/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
