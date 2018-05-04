//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LineGroup: Codable, Equatable {

    public var lineIdentifier: [String]?

    public var naptanIdReference: String?

    public var stationAtcoCode: String?

    public init(lineIdentifier: [String]? = nil, naptanIdReference: String? = nil, stationAtcoCode: String? = nil) {
        self.lineIdentifier = lineIdentifier
        self.naptanIdReference = naptanIdReference
        self.stationAtcoCode = stationAtcoCode
    }

    private enum CodingKeys: String, CodingKey {
        case lineIdentifier
        case naptanIdReference
        case stationAtcoCode
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        lineIdentifier = try container.decodeArrayIfPresent(.lineIdentifier)
        naptanIdReference = try container.decodeIfPresent(.naptanIdReference)
        stationAtcoCode = try container.decodeIfPresent(.stationAtcoCode)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(lineIdentifier, forKey: .lineIdentifier)
        try container.encode(naptanIdReference, forKey: .naptanIdReference)
        try container.encode(stationAtcoCode, forKey: .stationAtcoCode)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LineGroup else { return false }
      guard self.lineIdentifier == object.lineIdentifier else { return false }
      guard self.naptanIdReference == object.naptanIdReference else { return false }
      guard self.stationAtcoCode == object.stationAtcoCode else { return false }
      return true
    }

    public static func == (lhs: LineGroup, rhs: LineGroup) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
