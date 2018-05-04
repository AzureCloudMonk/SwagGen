//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Instruction: Codable, Equatable {

    public var detailed: String?

    public var steps: [InstructionStep]?

    public var summary: String?

    public init(detailed: String? = nil, steps: [InstructionStep]? = nil, summary: String? = nil) {
        self.detailed = detailed
        self.steps = steps
        self.summary = summary
    }

    private enum CodingKeys: String, CodingKey {
        case detailed
        case steps
        case summary
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        detailed = try container.decodeIfPresent(.detailed)
        steps = try container.decodeArrayIfPresent(.steps)
        summary = try container.decodeIfPresent(.summary)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(detailed, forKey: .detailed)
        try container.encode(steps, forKey: .steps)
        try container.encode(summary, forKey: .summary)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Instruction else { return false }
      guard self.detailed == object.detailed else { return false }
      guard self.steps == object.steps else { return false }
      guard self.summary == object.summary else { return false }
      return true
    }

    public static func == (lhs: Instruction, rhs: Instruction) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
