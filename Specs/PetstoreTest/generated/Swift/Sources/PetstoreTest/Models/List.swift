//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class List: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var _123List: String?

    public init(_123List: String? = nil) {
        self._123List = _123List
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        _123List = jsonDictionary.json(atKeyPath: "123-list")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let _123List = _123List {
            dictionary["123-list"] = _123List
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}