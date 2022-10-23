//
//  DM.swift
//  
//
//  Created by Helloyunho on 2022/01/29.
//

import Foundation

public struct DMChannelPayload: TextChannelPayload {
    public var lastMessageId: NullableValue<Snowflake>?
    public var lastPinTimestamp: NullableValue<String>?
    public var id: Snowflake
    public var type: ChannelType = .DM
//    public var recipients: UserPayload[]
}

public struct GroupDMChannelPayload: TextChannelPayload {
    public var lastMessageId: NullableValue<Snowflake>?
    public var lastPinTimestamp: NullableValue<String>?
    public var id: Snowflake
    public var type: ChannelType = .GROUP_DM
    public var name: String
    public var icon: NullableValue<String>
    public var ownerId: Snowflake
    public var applicationId: Snowflake
}

public struct EditGroupDMChannelPayload: Codable {
    public var name: String?
    public var icon: String?
}
