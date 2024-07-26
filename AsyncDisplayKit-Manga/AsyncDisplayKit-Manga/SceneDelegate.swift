//
//  SceneDelegate.swift
//  AsyncDisplayKit-Manga
//
//  Created by anh.nguyen3 on 23/07/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let posts = [
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/ZNi/27?h=WPMn-8j4CjvUuuFulKaoeQ", caption: "Caption for image 1"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/JkB/80?h=iOlglHe-bYhdFouq4Yh-pg", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/Y-e/81?h=bizMxA-SpfUGi8ArKqSMMw", caption: "Caption for image 1"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/Y-e/81?h=bizMxA-SpfUGi8ArKqSMMw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/olu/28?h=iHwVUHUsCWGBDZoEQ7aFUw", caption: "Caption for image 1"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/ZNi/27?h=WPMn-8j4CjvUuuFulKaoeQ", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/y72/25?h=64yiwPC6i4vS654a9gmNqQ", caption: "Caption for image 1"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/y2r/6?h=vxIiPqqb1Ph2hkuuLakWyA", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/_7_/22?h=XJQYBngb4LIM6ufFRwzqEQ", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/UCr/29?h=8JvV8lPkhfkJVKILW9oyxQ", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F5U/65?h=B-SyNmsg9HU3TAgnkd7twA", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4y/64?h=LKJgRKqujmC_mOehvzRyhQ", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                    Post(imageURL: "https://honto-dev-api.tokyo-cdn.com/l/F4B/63?h=Mn_OS7S8qe8yV6svoypHRw", caption: "Caption for image 2"),
                ]
        let initialViewController = FeedViewController(posts: posts)
        window.rootViewController = initialViewController
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

