//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AvatarCandidateCreateResponseItem: APIModel {

    public var filename: String?

    public var filesize: Int?

    public var slug: String?

    public var uploadURL: String?

    public init(filename: String? = nil, filesize: Int? = nil, slug: String? = nil, uploadURL: String? = nil) {
        self.filename = filename
        self.filesize = filesize
        self.slug = slug
        self.uploadURL = uploadURL
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        filename = try container.decodeIfPresent("filename")
        filesize = try container.decodeIfPresent("filesize")
        slug = try container.decodeIfPresent("slug")
        uploadURL = try container.decodeIfPresent("upload_url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(filename, forKey: "filename")
        try container.encodeIfPresent(filesize, forKey: "filesize")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(uploadURL, forKey: "upload_url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AvatarCandidateCreateResponseItem else { return false }
      guard self.filename == object.filename else { return false }
      guard self.filesize == object.filesize else { return false }
      guard self.slug == object.slug else { return false }
      guard self.uploadURL == object.uploadURL else { return false }
      return true
    }

    public static func == (lhs: V0AvatarCandidateCreateResponseItem, rhs: V0AvatarCandidateCreateResponseItem) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}