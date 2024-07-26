//
//  CardNode.swift
//  AsyncDisplayKit-Manga
//
//  Created by anh.nguyen3 on 25/07/2024.
//

import Foundation
import AsyncDisplayKit

class CardNode: ASDisplayNode {
    override func calculateSizeThatFits(_ constrainedSize: CGSize) -> CGSize {
      return CGSize(width: constrainedSize.width * 0.2, height: constrainedSize.height * 0.2)
    }
}
