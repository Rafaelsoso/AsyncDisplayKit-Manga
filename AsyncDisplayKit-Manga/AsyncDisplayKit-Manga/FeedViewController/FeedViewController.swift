//
//  ViewController.swift
//  AsyncDisplayKit-Manga
//
//  Created by anh.nguyen3 on 23/07/2024.
//

import UIKit
import AsyncDisplayKit

class FeedViewController: ASDKViewController<ASTableNode> {
    
    private let tableNode: ASTableNode
    private let posts: [Post]
    private var titles: [TitleModel] = []
    
    init(posts: [Post]) {
        self.posts = posts
        self.tableNode = ASTableNode(style: .plain)
        super.init(node: tableNode)
        self.tableNode.dataSource = self
        self.tableNode.delegate = self
        
        
        let url = URL(string: "https://honto-dev-api.tokyo-cdn.com/api/v1/home?app_ver=2.4.0&os=ios&os_ver=16.4&secret=fd4238f69827b315dae6cbbdf4aadfc2304a3b3c192c059097f355cc11d3f041")!

        // Create an instance of NetworkManager
        let networkManager = NetworkManager()

        // Fetch and parse data
        networkManager.fetchData(from: url) { (result: Result<HomeGetResponse, Error>) in
            switch result {
            case .success(let people):
                // Handle the parsed data
                self.titles = people.result?.recommendSection.titles ?? []
               // self.tableNode.reloadData()
            case .failure(let error):
                // Handle the error
                print("Error fetching data: \(error.localizedDescription)")
            }
        }
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FeedViewController: ASTableDataSource {
    
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableNode(_ tableNode: ASTableNode, nodeForRowAt indexPath: IndexPath) -> ASCellNode {
        let post = posts[indexPath.row]
        return PostCellNode(post: post)
    }
}

extension FeedViewController: ASTableDelegate {
    // Implement any delegate methods if needed
}
