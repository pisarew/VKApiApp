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
    let attachments: [Attachment]
    let postSource: PostSource
    let comments: Comments
    let likes: Likes
    let reposts: Reposts
    let views: Views
    let donut: Donut
    let shortTextRate: Double
    let carouselOffset, edited: Int?
    let hash: String

    enum CodingKeys: String, CodingKey {
        case id
        case fromID = "from_id"
        case ownerID = "owner_id"
        case date
        case markedAsAds = "marked_as_ads"
        case postType = "post_type"
        case text, attachments
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
    let video: Video?
}

// MARK: - Photo
struct Photo: Decodable {
    let albumID, date, id, ownerID: Int
    let accessKey: String
    let sizes: [Size]
    let text: String
    let userID: Int
    let hasTags: Bool

    enum CodingKeys: String, CodingKey {
        case albumID = "album_id"
        case date, id
        case ownerID = "owner_id"
        case accessKey = "access_key"
        case sizes, text
        case userID = "user_id"
        case hasTags = "has_tags"
    }
}

// MARK: - Size
struct Size: Decodable {
    let height: Int
    let url: String
    let type: String?
    let width: Int
    let withPadding: Int?

    enum CodingKeys: String, CodingKey {
        case height, url, type, width
        case withPadding = "with_padding"
    }
}

// MARK: - Video
struct Video: Decodable {
    let accessKey: String
    let canComment, canLike, canRepost, canSubscribe: Int
    let canAddToFaves, canAdd, comments, date: Int
    let videoDescription: String
    let duration: Int
    let image, firstFrame: [Size]
    let width, height, id, ownerID: Int
    let title, trackCode, type: String
    let views: Int

    enum CodingKeys: String, CodingKey {
        case accessKey = "access_key"
        case canComment = "can_comment"
        case canLike = "can_like"
        case canRepost = "can_repost"
        case canSubscribe = "can_subscribe"
        case canAddToFaves = "can_add_to_faves"
        case canAdd = "can_add"
        case comments, date
        case videoDescription = "description"
        case duration, image
        case firstFrame = "first_frame"
        case width, height, id
        case ownerID = "owner_id"
        case title
        case trackCode = "track_code"
        case type, views
    }
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
    let platform: String?
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
