//
//  ISO8601Decoder.swift
//
//
//  Created by Helloyunho on 2022/02/01.
//

import Foundation

@propertyWrapper
public struct ISO8601Decoder: Codable {
    public var wrappedValue: Date

    public init(wrappedValue: Date) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let dateString = try container.decode(String.self)
        let formatter = ISO8601DateFormatter()
        if let date = formatter.date(from: dateString) {
            self.wrappedValue = date
        } else {
            throw DecodingError.dataCorrupted(.init(codingPath: container.codingPath, debugDescription: "ISO8061 parsing error", underlyingError: nil))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        let formatter = ISO8601DateFormatter()
        try container.encode(formatter.string(from: self.wrappedValue))
    }
}

@propertyWrapper
public struct UndefindableISO8601Decoder: Codable {
    public var wrappedValue: Date?

    public init(wrappedValue: Date?) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        do {
            let container = try decoder.singleValueContainer()
            let dateString = try container.decode(String.self)
            let formatter = ISO8601DateFormatter()
            if let date = formatter.date(from: dateString) {
                self.wrappedValue = date
            } else {
                throw DecodingError.dataCorrupted(.init(codingPath: container.codingPath, debugDescription: "ISO8061 parsing error", underlyingError: nil))
            }
        } catch {
            self.wrappedValue = nil
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let wrappedValue = wrappedValue {
            var container = encoder.singleValueContainer()
            let formatter = ISO8601DateFormatter()
            try container.encode(formatter.string(from: wrappedValue))
        }
    }
}
