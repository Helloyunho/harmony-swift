//
//  Nullable.swift
//  
//
//  Created by Helloyunho on 2022/01/30.
//

import Foundation

public enum NullableValue<T>: Codable where T: Codable {
    case value(T)
    case null
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if container.decodeNil() {
            self = .null
        } else {
            self = .value(try container.decode(T.self))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .value(let t):
            try container.encode(t)
        case .null:
            try container.encodeNil()
        }
    }
}
