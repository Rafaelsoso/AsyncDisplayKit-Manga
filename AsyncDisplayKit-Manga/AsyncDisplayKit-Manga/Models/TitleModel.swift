//
//  TitleModel.swift
//  honto_iOS
//
//  Created by Yudai Asano on R 4/09/29.
//

import Foundation

// MARK: - TitleModel

struct TitleModel: Codable {
    var id: Int
    var isSerialized: Bool
    var isBookmarked: Bool
    var hasLabel: Bool // 「タテヨミ」ラベル
    var isAvailable: Bool //　販売終了管理
    var imageURL: URL?
    var titleName: String
    var authorName: String
    var description: String
    var numberOfBookmarks: Int
    var tags: [TagModel]
    var maxRewardNumber: Int
    var remainingRewardNumber: Int
    var hasNotification: Bool // チャージ完了通知のフラグ
    var isReadableGiftTicket: Bool //　ギフトチケット対象作品かどうか
    var offerText: String
}

struct Section: Codable {
    var id: Int
    var type: String
    var headerTitle: String
    var titles: [TitleModel]
}

struct HomeModel: Codable {
    var readingHistorySection: Section
    var recommendSection: Section
}
