//
//  PostCellNode.swift
//  AsyncDisplayKit-Manga
//
//  Created by anh.nguyen3 on 26/07/2024.
//

import AsyncDisplayKit

class PostCellNode: ASCellNode {
    
    private let imageNode = ASNetworkImageNode()
    private let captionNode = ASTextNode()
    
    init(post: Post) {
        super.init()
        
        // Configure imageNode
        imageNode.url = URL(string: post.imageURL )
        imageNode.contentMode = .scaleAspectFill
        imageNode.clipsToBounds = true
        imageNode.style.preferredSize = CGSize(width: UIScreen.main.bounds.width, height: 200)
        
        // Configure captionNode
        captionNode.attributedText = NSAttributedString(string: post.caption, attributes: [.font: UIFont.systemFont(ofSize: 16)])
        
        // Add subnodes
        addSubnode(imageNode)
        addSubnode(captionNode)
        
        // Set up layout
        imageNode.style.height = ASDimensionMake(200)
        captionNode.style.flexGrow = 1.0
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let stackSpec = ASStackLayoutSpec(direction: .vertical,
                                          spacing: 8,
                                          justifyContent: .start,
                                          alignItems: .stretch,
                                          children: [imageNode, captionNode])
        return stackSpec
    }
}

