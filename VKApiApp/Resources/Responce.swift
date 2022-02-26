//
//  resurces.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation





// MARK: - Welcome
struct Welcome: Decodable {
    let response: Response
}

// MARK: - Response
struct Response: Decodable {
    let count: Int
    let items: [Item]
}

// MARK: - Item
struct Item: Decodable {
    let id, fromID, ownerID, date: Int
    let markedAsAds: Int
    let postType, text: String
    let isPinned: Int
    let attachments: [Attachment]
    let postSource: PostSource
    let comments: Comments
    let likes: Likes
    let reposts: Reposts
    let views: Views
    let donut: Donut
    let shortTextRate: Double
    let carouselOffset, edited: Int
    let hash: String

    enum CodingKeys: String, CodingKey {
        case id
        case fromID = "from_id"
        case ownerID = "owner_id"
        case date
        case markedAsAds = "marked_as_ads"
        case postType = "post_type"
        case text
        case isPinned = "is_pinned"
        case attachments
        case postSource = "post_source"
        case comments, likes, reposts, views, donut
        case shortTextRate = "short_text_rate"
        case carouselOffset = "carousel_offset"
        case edited, hash
    }
}

// MARK: - Attachment
struct Attachment: Decodable {
    let type: String
    let photo: Photo?
    let audio: Audio?
}

// MARK: - Audio
struct Audio: Decodable {
    let artist: String
    let id, ownerID: Int
    let title: String
    let duration: Int
    let isExplicit, isFocusTrack: Bool
    let trackCode: String
    let url: String
    let date: Int
    let mainArtists: [MainArtist]
    let shortVideosAllowed, storiesAllowed, storiesCoverAllowed: Bool
    let subtitle: String?

    enum CodingKeys: String, CodingKey {
        case artist, id
        case ownerID = "owner_id"
        case title, duration
        case isExplicit = "is_explicit"
        case isFocusTrack = "is_focus_track"
        case trackCode = "track_code"
        case url, date
        case mainArtists = "main_artists"
        case shortVideosAllowed = "short_videos_allowed"
        case storiesAllowed = "stories_allowed"
        case storiesCoverAllowed = "stories_cover_allowed"
        case subtitle
    }
}

// MARK: - MainArtist
struct MainArtist: Decodable {
    let name, domain, id: String
}

// MARK: - Photo
struct Photo: Decodable {
    let albumID, date, id, ownerID: Int
    let accessKey: String
    let postID: Int
    let sizes: [Size]
    let text: String
    let userID: Int
    let hasTags: Bool

    enum CodingKeys: String, CodingKey {
        case albumID = "album_id"
        case date, id
        case ownerID = "owner_id"
        case accessKey = "access_key"
        case postID = "post_id"
        case sizes, text
        case userID = "user_id"
        case hasTags = "has_tags"
    }
}

// MARK: - Size
struct Size: Decodable {
    let height: Int
    let url: String
    let type: String
    let width: Int
}

// MARK: - Comments
struct Comments: Decodable {
    let canPost, count: Int
    let groupsCanPost: Bool

    enum CodingKeys: String, CodingKey {
        case canPost = "can_post"
        case count
        case groupsCanPost = "groups_can_post"
    }
}

// MARK: - Donut
struct Donut: Decodable {
    let isDonut: Bool

    enum CodingKeys: String, CodingKey {
        case isDonut = "is_donut"
    }
}

// MARK: - Likes
struct Likes: Decodable {
    let canLike, count, userLikes, canPublish: Int

    enum CodingKeys: String, CodingKey {
        case canLike = "can_like"
        case count
        case userLikes = "user_likes"
        case canPublish = "can_publish"
    }
}

// MARK: - PostSource
struct PostSource: Decodable {
    let type: String
}

// MARK: - Reposts
struct Reposts: Decodable {
    let count, userReposted: Int

    enum CodingKeys: String, CodingKey {
        case count
        case userReposted = "user_reposted"
    }
}

// MARK: - Views
struct Views: Decodable {
    let count: Int
}
