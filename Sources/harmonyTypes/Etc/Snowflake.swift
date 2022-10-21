//
//  Snowflake.swift
//  
//
//  Created by Helloyunho on 2022/01/13.
//

import Foundation

public struct Snowflake: Codable, LosslessStringConvertible {
    public let id: UInt64
    public var description: String {
        String(id)
    }
    
    public init?(_ description: String) {
        if let value = UInt64(description) {
            id = value
        } else {
            return nil
        }
    }
    
    public init(_ id: UInt64) {
        self.id = id
    }
    
    public init(from decoder: Decoder) throws {
        let idString = try decoder.singleValueContainer().decode(String.self)
        id = UInt64(idString)!
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(id)
    }
}
