//
//  ViewController.swift
//  NibExample
//
//  Created by steve on 2018-09-12.
//  Copyright © 2018 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    guard let myView = Bundle.main.loadNibNamed("MyView", owner: nil, options: nil)?.first as? MyView else { return }
    myView.button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    myView.frame = view.frame
    self.view = myView
  }
  
  @objc func buttonTapped() {
    
  }
}

