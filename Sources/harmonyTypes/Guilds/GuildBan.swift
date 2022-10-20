//
//  GuildBan.swift
//  
//
//  Created by Helloyunho on 2022/10/20.
//

import Foundation

public struct GuildBanPayload: Codable {
//    var user: UserPayload
    var reason: NullableValue<String>
}

public struct CreateGuildBanPayload: Codable {
    var deleteMessageDays: UInt?
}
