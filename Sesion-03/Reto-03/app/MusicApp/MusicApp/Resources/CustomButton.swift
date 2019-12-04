//
//  CustomButton.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import UIKit

class PlayerButton: UIButton {
  var icon: UIImage?
  var secondIcon: UIImage?
  var isPlaying: Bool = false
  
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    self.layer.cornerRadius = self.frame.width/2
    self.clipsToBounds = true
    self.backgroundColor = .red
    self.tintColor = greenSelectedCell
  }
  
}
