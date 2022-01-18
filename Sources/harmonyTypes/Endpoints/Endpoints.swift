// NOTE: This file is auto-generated

import Foundation

public class Endpoints {
    /// Get Entitlements
    /// - Method: GET
    public static func getEntitlements(
        _ applicationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("entitlements")
    }

    /// Get Entitlement
    /// - Method: GET
    public static func getEntitlement(
        _ applicationId: Snowflake,
        _ entitlementId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("entitlements")
            .appendingPathComponent(String(entitlementId))
    }

    /// Get SKUs
    /// - Method: GET
    public static func getSKUs(
        _ applicationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("skus")
    }

    /// Consume SKU
    /// - Method: POST
    public static func consumeSKU(
        _ applicationId: Snowflake,
        _ entitlementId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("entitlements")
            .appendingPathComponent(String(entitlementId))
            .appendingPathComponent("consume")
    }

    /// Delete Test Entitlement
    /// - Method: DELETE
    public static func deleteTestEntitlement(
        _ applicationId: Snowflake,
        _ entitlementId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("entitlements")
            .appendingPathComponent(String(entitlementId))
    }

    /// Create Purchase Discount
    /// - Method: PUT
    public static func createPurchaseDiscount(
        _ skuId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("store")
            .appendingPathComponent("skus")
            .appendingPathComponent(String(skuId))
            .appendingPathComponent("discounts")
            .appendingPathComponent(String(userId))
    }

    /// Delete Purchase Discount
    /// - Method: DELETE
    public static func deletePurchaseDiscount(
        _ skuId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("store")
            .appendingPathComponent("skus")
            .appendingPathComponent(String(skuId))
            .appendingPathComponent("discounts")
            .appendingPathComponent(String(userId))
    }

    /// Get Global Application Commands
    /// - Method: GET
    public static func getGlobalApplicationCommands(
        _ applicationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
    }

    /// Create Global Application Command
    /// - Method: POST
    public static func createGlobalApplicationCommand(
        _ applicationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
    }

    /// Get Global Application Command
    /// - Method: GET
    public static func getGlobalApplicationCommand(
        _ applicationId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Edit Global Application Command
    /// - Method: PATCH
    public static func editGlobalApplicationCommand(
        _ applicationId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Delete Global Application Command
    /// - Method: DELETE
    public static func deleteGlobalApplicationCommand(
        _ applicationId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Bulk Overwrite Global Application Commands
    /// - Method: PUT
    public static func bulkOverwriteGlobalApplicationCommands(
        _ applicationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("commands")
    }

    /// Get Guild Application Commands
    /// - Method: GET
    public static func getGuildApplicationCommands(
        _ applicationId: Snowflake,
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
    }

    /// Create Guild Application Command
    /// - Method: POST
    public static func createGuildApplicationCommand(
        _ applicationId: Snowflake,
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
    }

    /// Get Guild Application Command
    /// - Method: GET
    public static func getGuildApplicationCommand(
        _ applicationId: Snowflake,
        _ guildId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Edit Guild Application Command
    /// - Method: PATCH
    public static func editGuildApplicationCommand(
        _ applicationId: Snowflake,
        _ guildId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Delete Guild Application Command
    /// - Method: DELETE
    public static func deleteGuildApplicationCommand(
        _ applicationId: Snowflake,
        _ guildId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
    }

    /// Bulk Overwrite Guild Application Commands
    /// - Method: PUT
    public static func bulkOverwriteGuildApplicationCommands(
        _ applicationId: Snowflake,
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
    }

    /// Get Guild Application Command Permissions
    /// - Method: GET
    public static func getGuildApplicationCommandPermissions(
        _ applicationId: Snowflake,
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent("permissions")
    }

    /// Get Application Command Permissions
    /// - Method: GET
    public static func getApplicationCommandPermissions(
        _ applicationId: Snowflake,
        _ guildId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
            .appendingPathComponent("permissions")
    }

    /// Edit Application Command Permissions
    /// - Method: PUT
    public static func editApplicationCommandPermissions(
        _ applicationId: Snowflake,
        _ guildId: Snowflake,
        _ commandId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent(String(commandId))
            .appendingPathComponent("permissions")
    }

    /// Batch Edit Application Command Permissions
    /// - Method: PUT
    public static func batchEditApplicationCommandPermissions(
        _ applicationId: Snowflake,
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("applications")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("commands")
            .appendingPathComponent("permissions")
    }

    /// Create Interaction Response
    /// - Method: POST
    public static func createInteractionResponse(
        _ interactionId: Snowflake,
        _ interactionToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("interactions")
            .appendingPathComponent(String(interactionId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("callback")
    }

    /// Get Original Interaction Response
    /// - Method: GET
    public static func getOriginalInteractionResponse(
        _ applicationId: Snowflake,
        _ interactionToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent("@original")
    }

    /// Edit Original Interaction Response
    /// - Method: PATCH
    public static func editOriginalInteractionResponse(
        _ applicationId: Snowflake,
        _ interactionToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent("@original")
    }

    /// Delete Original Interaction Response
    /// - Method: DELETE
    public static func deleteOriginalInteractionResponse(
        _ applicationId: Snowflake,
        _ interactionToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent("@original")
    }

    /// Create Followup Message
    /// - Method: POST
    public static func createFollowupMessage(
        _ applicationId: Snowflake,
        _ interactionToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
    }

    /// Get Followup Message
    /// - Method: GET
    public static func getFollowupMessage(
        _ applicationId: Snowflake,
        _ interactionToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Edit Followup Message
    /// - Method: PATCH
    public static func editFollowupMessage(
        _ applicationId: Snowflake,
        _ interactionToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Delete Followup Message
    /// - Method: DELETE
    public static func deleteFollowupMessage(
        _ applicationId: Snowflake,
        _ interactionToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(applicationId))
            .appendingPathComponent(String(interactionToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// List Voice Regions
    /// - Method: GET
    public static func listVoiceRegions() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("voice")
            .appendingPathComponent("regions")
    }

    /// Get Guild Audit Log
    /// - Method: GET
    public static func getGuildAuditLog(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("audit-logs")
    }

    /// Create Guild
    /// - Method: POST
    public static func createGuild() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
    }

    /// Get Guild
    /// - Method: GET
    public static func getGuild(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
    }

    /// Get Guild Preview
    /// - Method: GET
    public static func getGuildPreview(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("preview")
    }

    /// Edit Guild
    /// - Method: PATCH
    public static func editGuild(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
    }

    /// Delete Guild
    /// - Method: DELETE
    public static func deleteGuild(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
    }

    /// Get Guild Channels
    /// - Method: GET
    public static func getGuildChannels(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("channels")
    }

    /// Create Guild Channel
    /// - Method: POST
    public static func createGuildChannel(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("channels")
    }

    /// Edit Guild Channel Positions
    /// - Method: PATCH
    public static func editGuildChannelPositions(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("channels")
    }

    /// List Active Guild Threads
    /// - Method: GET
    public static func listActiveGuildThreads(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("threads")
            .appendingPathComponent("active")
    }

    /// Get Guild Member
    /// - Method: GET
    public static func getGuildMember(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
    }

    /// List Guild Members
    /// - Method: GET
    public static func listGuildMembers(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
    }

    /// Search Guild Members
    /// - Method: GET
    public static func searchGuildMembers(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent("search")
    }

    /// Add Guild Member
    /// - Method: PUT
    public static func addGuildMember(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
    }

    /// Edit Guild Member
    /// - Method: PATCH
    public static func editGuildMember(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
    }

    /// Edit Current Member
    /// - Method: PATCH
    public static func editCurrentMember(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent("@me")
    }

    /// Edit Current User Nick
    /// - Method: PATCH
    public static func editCurrentUserNick(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent("@me")
            .appendingPathComponent("nick")
    }

    /// Add Guild Member Role
    /// - Method: PUT
    public static func addGuildMemberRole(
        _ guildId: Snowflake,
        _ userId: Snowflake,
        _ roleId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
            .appendingPathComponent("roles")
            .appendingPathComponent(String(roleId))
    }

    /// Remove Guild Member Role
    /// - Method: DELETE
    public static func removeGuildMemberRole(
        _ guildId: Snowflake,
        _ userId: Snowflake,
        _ roleId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
            .appendingPathComponent("roles")
            .appendingPathComponent(String(roleId))
    }

    /// Remove Guild Member
    /// - Method: DELETE
    public static func removeGuildMember(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("members")
            .appendingPathComponent(String(userId))
    }

    /// Get Guild Bans
    /// - Method: GET
    public static func getGuildBans(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("bans")
    }

    /// Get Guild Ban
    /// - Method: GET
    public static func getGuildBan(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("bans")
            .appendingPathComponent(String(userId))
    }

    /// Create Guild Ban
    /// - Method: PUT
    public static func createGuildBan(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("bans")
            .appendingPathComponent(String(userId))
    }

    /// Remove Guild Ban
    /// - Method: DELETE
    public static func removeGuildBan(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("bans")
            .appendingPathComponent(String(userId))
    }

    /// Get Guild Roles
    /// - Method: GET
    public static func getGuildRoles(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("roles")
    }

    /// Create Guild Role
    /// - Method: POST
    public static func createGuildRole(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("roles")
    }

    /// Edit Guild Role Positions
    /// - Method: PATCH
    public static func editGuildRolePositions(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("roles")
    }

    /// Edit Guild Role
    /// - Method: PATCH
    public static func editGuildRole(
        _ guildId: Snowflake,
        _ roleId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("roles")
            .appendingPathComponent(String(roleId))
    }

    /// Delete Guild Role
    /// - Method: DELETE
    public static func deleteGuildRole(
        _ guildId: Snowflake,
        _ roleId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("roles")
            .appendingPathComponent(String(roleId))
    }

    /// Get Guild Prune Count
    /// - Method: GET
    public static func getGuildPruneCount(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("prune")
    }

    /// Begin Guild Prune
    /// - Method: POST
    public static func beginGuildPrune(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("prune")
    }

    /// Get Guild Voice Regions
    /// - Method: GET
    public static func getGuildVoiceRegions(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("regions")
    }

    /// Get Guild Invites
    /// - Method: GET
    public static func getGuildInvites(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("invites")
    }

    /// Get Guild Integrations
    /// - Method: GET
    public static func getGuildIntegrations(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("integrations")
    }

    /// Delete Guild Integration
    /// - Method: DELETE
    public static func deleteGuildIntegration(
        _ guildId: Snowflake,
        _ integrationId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("integrations")
            .appendingPathComponent(String(integrationId))
    }

    /// Get Guild Widget Settings
    /// - Method: GET
    public static func getGuildWidgetSettings(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("widget")
    }

    /// Edit Guild Widget
    /// - Method: PATCH
    public static func editGuildWidget(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("widget")
    }

    /// Get Guild Widget
    /// - Method: GET
    public static func getGuildWidget(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("widget.json")
    }

    /// Get Guild Vanity URL
    /// - Method: GET
    public static func getGuildVanityURL(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("vanity-url")
    }

    /// Get Guild Widget Image
    /// - Method: GET
    public static func getGuildWidgetImage(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("widget.png")
    }

    /// Get Guild Welcome Screen
    /// - Method: GET
    public static func getGuildWelcomeScreen(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("welcome-screen")
    }

    /// Edit Guild Welcome Screen
    /// - Method: PATCH
    public static func editGuildWelcomeScreen(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("welcome-screen")
    }

    /// Edit Current User Voice State
    /// - Method: PATCH
    public static func editCurrentUserVoiceState(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("voice-states")
            .appendingPathComponent("@me")
    }

    /// Edit User Voice State
    /// - Method: PATCH
    public static func editUserVoiceState(
        _ guildId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("voice-states")
            .appendingPathComponent(String(userId))
    }

    /// Create Stage Instance
    /// - Method: POST
    public static func createStageInstance() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("stage-instances")
    }

    /// Get Stage Instance
    /// - Method: GET
    public static func getStageInstance(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("stage-instances")
            .appendingPathComponent(String(channelId))
    }

    /// Edit Stage Instance
    /// - Method: PATCH
    public static func editStageInstance(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("stage-instances")
            .appendingPathComponent(String(channelId))
    }

    /// Delete Stage Instance
    /// - Method: DELETE
    public static func deleteStageInstance(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("stage-instances")
            .appendingPathComponent(String(channelId))
    }

    /// List Scheduled Events for Guild
    /// - Method: GET
    public static func listScheduledEventsforGuild(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
    }

    /// Create Guild Scheduled Event
    /// - Method: POST
    public static func createGuildScheduledEvent(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
    }

    /// Get Guild Scheduled Event
    /// - Method: GET
    public static func getGuildScheduledEvent(
        _ guildId: Snowflake,
        _ guild_scheduled_eventId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
            .appendingPathComponent(String(guild_scheduled_eventId))
    }

    /// Edit Guild Scheduled Event
    /// - Method: PATCH
    public static func editGuildScheduledEvent(
        _ guildId: Snowflake,
        _ guild_scheduled_eventId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
            .appendingPathComponent(String(guild_scheduled_eventId))
    }

    /// Delete Guild Scheduled Event
    /// - Method: DELETE
    public static func deleteGuildScheduledEvent(
        _ guildId: Snowflake,
        _ guild_scheduled_eventId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
            .appendingPathComponent(String(guild_scheduled_eventId))
    }

    /// Get Guild Scheduled Event Users
    /// - Method: GET
    public static func getGuildScheduledEventUsers(
        _ guildId: Snowflake,
        _ guild_scheduled_eventId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("scheduled-events")
            .appendingPathComponent(String(guild_scheduled_eventId))
            .appendingPathComponent("users")
    }

    /// Create Webhook
    /// - Method: POST
    public static func createWebhook(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("webhooks")
    }

    /// Get Channel Webhooks
    /// - Method: GET
    public static func getChannelWebhooks(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("webhooks")
    }

    /// Get Guild Webhooks
    /// - Method: GET
    public static func getGuildWebhooks(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("webhooks")
    }

    /// Get Webhook
    /// - Method: GET
    public static func getWebhook(
        _ webhookId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
    }

    /// Get Webhook with Token
    /// - Method: GET
    public static func getWebhookwithToken(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
    }

    /// Edit Webhook
    /// - Method: PATCH
    public static func editWebhook(
        _ webhookId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
    }

    /// Edit Webhook with Token
    /// - Method: PATCH
    public static func editWebhookwithToken(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
    }

    /// Delete Webhook
    /// - Method: DELETE
    public static func deleteWebhook(
        _ webhookId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
    }

    /// Delete Webhook with Token
    /// - Method: DELETE
    public static func deleteWebhookwithToken(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
    }

    /// Execute Webhook
    /// - Method: POST
    public static func executeWebhook(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
    }

    /// Execute Slack-Compatible Webhook
    /// - Method: POST
    public static func executeSlackCompatibleWebhook(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
            .appendingPathComponent("slack")
    }

    /// Execute GitHub-Compatible Webhook
    /// - Method: POST
    public static func executeGitHubCompatibleWebhook(
        _ webhookId: Snowflake,
        _ webhookToken: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
            .appendingPathComponent("github")
    }

    /// Get Webhook Message
    /// - Method: GET
    public static func getWebhookMessage(
        _ webhookId: Snowflake,
        _ webhookToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Edit Webhook Message
    /// - Method: PATCH
    public static func editWebhookMessage(
        _ webhookId: Snowflake,
        _ webhookToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Delete Webhook Message
    /// - Method: DELETE
    public static func deleteWebhookMessage(
        _ webhookId: Snowflake,
        _ webhookToken: String,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("webhooks")
            .appendingPathComponent(String(webhookId))
            .appendingPathComponent(String(webhookToken))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Get Sticker
    /// - Method: GET
    public static func getSticker(
        _ stickerId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("stickers")
            .appendingPathComponent(String(stickerId))
    }

    /// List Nitro Sticker Packs
    /// - Method: GET
    public static func listNitroStickerPacks() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("sticker-packs")
    }

    /// List Guild Stickers
    /// - Method: GET
    public static func listGuildStickers(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("stickers")
    }

    /// Get Guild Sticker
    /// - Method: GET
    public static func getGuildSticker(
        _ guildId: Snowflake,
        _ stickerId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("stickers")
            .appendingPathComponent(String(stickerId))
    }

    /// Create Guild Sticker
    /// - Method: POST
    public static func createGuildSticker(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("stickers")
    }

    /// Edit Guild Sticker
    /// - Method: PATCH
    public static func editGuildSticker(
        _ guildId: Snowflake,
        _ stickerId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("stickers")
            .appendingPathComponent(String(stickerId))
    }

    /// Delete Guild Sticker
    /// - Method: DELETE
    public static func deleteGuildSticker(
        _ guildId: Snowflake,
        _ stickerId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("stickers")
            .appendingPathComponent(String(stickerId))
    }

    /// Get Current User
    /// - Method: GET
    public static func getCurrentUser() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
    }

    /// Get User
    /// - Method: GET
    public static func getUser(
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent(String(userId))
    }

    /// Edit Current User
    /// - Method: PATCH
    public static func editCurrentUser() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
    }

    /// Get Current User Guilds
    /// - Method: GET
    public static func getCurrentUserGuilds() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("guilds")
    }

    /// Get Current User Guild Member
    /// - Method: GET
    public static func getCurrentUserGuildMember(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("member")
    }

    /// Leave Guild
    /// - Method: DELETE
    public static func leaveGuild(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
    }

    /// Create DM
    /// - Method: POST
    public static func createDM() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("channels")
    }

    /// Create Group DM
    /// - Method: POST
    public static func createGroupDM() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("channels")
    }

    /// Get User Connections
    /// - Method: GET
    public static func getUserConnections() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("connections")
    }

    /// Get Guild Template
    /// - Method: GET
    public static func getGuildTemplate(
        _ templateCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent("templates")
            .appendingPathComponent(String(templateCode))
    }

    /// Create Guild from Guild Template
    /// - Method: POST
    public static func createGuildfromGuildTemplate(
        _ templateCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent("templates")
            .appendingPathComponent(String(templateCode))
    }

    /// Get Guild Templates
    /// - Method: GET
    public static func getGuildTemplates(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("templates")
    }

    /// Create Guild Template
    /// - Method: POST
    public static func createGuildTemplate(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("templates")
    }

    /// Sync Guild Template
    /// - Method: PUT
    public static func syncGuildTemplate(
        _ guildId: Snowflake,
        _ templateCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("templates")
            .appendingPathComponent(String(templateCode))
    }

    /// Edit Guild Template
    /// - Method: PATCH
    public static func editGuildTemplate(
        _ guildId: Snowflake,
        _ templateCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("templates")
            .appendingPathComponent(String(templateCode))
    }

    /// Delete Guild Template
    /// - Method: DELETE
    public static func deleteGuildTemplate(
        _ guildId: Snowflake,
        _ templateCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("templates")
            .appendingPathComponent(String(templateCode))
    }

    /// List Guild Emojis
    /// - Method: GET
    public static func listGuildEmojis(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("emojis")
    }

    /// Get Guild Emoji
    /// - Method: GET
    public static func getGuildEmoji(
        _ guildId: Snowflake,
        _ emojiId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("emojis")
            .appendingPathComponent(String(emojiId))
    }

    /// Create Guild Emoji
    /// - Method: POST
    public static func createGuildEmoji(
        _ guildId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("emojis")
    }

    /// Edit Guild Emoji
    /// - Method: PATCH
    public static func editGuildEmoji(
        _ guildId: Snowflake,
        _ emojiId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("emojis")
            .appendingPathComponent(String(emojiId))
    }

    /// Delete Guild Emoji
    /// - Method: DELETE
    public static func deleteGuildEmoji(
        _ guildId: Snowflake,
        _ emojiId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("guilds")
            .appendingPathComponent(String(guildId))
            .appendingPathComponent("emojis")
            .appendingPathComponent(String(emojiId))
    }

    /// Get Channel
    /// - Method: GET
    public static func getChannel(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
    }

    /// Edit Channel
    /// - Method: PATCH
    public static func editChannel(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
    }

    /// Get Channel Messages
    /// - Method: GET
    public static func getChannelMessages(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
    }

    /// Get Channel Message
    /// - Method: GET
    public static func getChannelMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Create Message
    /// - Method: POST
    public static func createMessage(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
    }

    /// Crosspost Message
    /// - Method: POST
    public static func crosspostMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("crosspost")
    }

    /// Create Reaction
    /// - Method: PUT
    public static func createReaction(
        _ channelId: Snowflake,
        _ messageId: Snowflake,
        _ emoji: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
            .appendingPathComponent(String(emoji))
            .appendingPathComponent("@me")
    }

    /// Delete Own Reaction
    /// - Method: DELETE
    public static func deleteOwnReaction(
        _ channelId: Snowflake,
        _ messageId: Snowflake,
        _ emoji: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
            .appendingPathComponent(String(emoji))
            .appendingPathComponent("@me")
    }

    /// Delete User Reaction
    /// - Method: DELETE
    public static func deleteUserReaction(
        _ channelId: Snowflake,
        _ messageId: Snowflake,
        _ emoji: String,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
            .appendingPathComponent(String(emoji))
            .appendingPathComponent(String(userId))
    }

    /// Get Reactions
    /// - Method: GET
    public static func getReactions(
        _ channelId: Snowflake,
        _ messageId: Snowflake,
        _ emoji: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
            .appendingPathComponent(String(emoji))
    }

    /// Delete All Reactions
    /// - Method: DELETE
    public static func deleteAllReactions(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
    }

    /// Delete All Reactions for Emoji
    /// - Method: DELETE
    public static func deleteAllReactionsforEmoji(
        _ channelId: Snowflake,
        _ messageId: Snowflake,
        _ emoji: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("reactions")
            .appendingPathComponent(String(emoji))
    }

    /// Edit Message
    /// - Method: PATCH
    public static func editMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Delete Message
    /// - Method: DELETE
    public static func deleteMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
    }

    /// Bulk Delete Messages
    /// - Method: POST
    public static func bulkDeleteMessages(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent("bulk-delete")
    }

    /// Edit Channel Permissions
    /// - Method: PUT
    public static func editChannelPermissions(
        _ channelId: Snowflake,
        _ overwriteId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("permissions")
            .appendingPathComponent(String(overwriteId))
    }

    /// Get Channel Invites
    /// - Method: GET
    public static func getChannelInvites(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("invites")
    }

    /// Create Channel Invite
    /// - Method: POST
    public static func createChannelInvite(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("invites")
    }

    /// Delete Channel Permission
    /// - Method: DELETE
    public static func deleteChannelPermission(
        _ channelId: Snowflake,
        _ overwriteId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("permissions")
            .appendingPathComponent(String(overwriteId))
    }

    /// Follow News Channel
    /// - Method: POST
    public static func followNewsChannel(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("followers")
    }

    /// Trigger Typing Indicator
    /// - Method: POST
    public static func triggerTypingIndicator(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("typing")
    }

    /// Get Pinned Messages
    /// - Method: GET
    public static func getPinnedMessages(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("pins")
    }

    /// Pin Message
    /// - Method: PUT
    public static func pinMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("pins")
            .appendingPathComponent(String(messageId))
    }

    /// Unpin Message
    /// - Method: DELETE
    public static func unpinMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("pins")
            .appendingPathComponent(String(messageId))
    }

    /// Group DM Add Recipient
    /// - Method: PUT
    public static func groupDMAddRecipient(
        _ channelId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("recipients")
            .appendingPathComponent(String(userId))
    }

    /// Group DM Remove Recipient
    /// - Method: DELETE
    public static func groupDMRemoveRecipient(
        _ channelId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("recipients")
            .appendingPathComponent(String(userId))
    }

    /// Start Thread with Message
    /// - Method: POST
    public static func startThreadwithMessage(
        _ channelId: Snowflake,
        _ messageId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("messages")
            .appendingPathComponent(String(messageId))
            .appendingPathComponent("threads")
    }

    /// Start Thread without Message
    /// - Method: POST
    public static func startThreadwithoutMessage(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("threads")
    }

    /// Join Thread
    /// - Method: PUT
    public static func joinThread(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
            .appendingPathComponent("@me")
    }

    /// Add Thread Member
    /// - Method: PUT
    public static func addThreadMember(
        _ channelId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
            .appendingPathComponent(String(userId))
    }

    /// Leave Thread
    /// - Method: DELETE
    public static func leaveThread(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
            .appendingPathComponent("@me")
    }

    /// Remove Thread Member
    /// - Method: DELETE
    public static func removeThreadMember(
        _ channelId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
            .appendingPathComponent(String(userId))
    }

    /// Get Thread Member
    /// - Method: GET
    public static func getThreadMember(
        _ channelId: Snowflake,
        _ userId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
            .appendingPathComponent(String(userId))
    }

    /// List Thread Members
    /// - Method: GET
    public static func listThreadMembers(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("thread-members")
    }

    /// List Active Threads
    /// - Method: GET
    public static func listActiveThreads(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("threads")
            .appendingPathComponent("active")
    }

    /// List Public Archived Threads
    /// - Method: GET
    public static func listPublicArchivedThreads(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("threads")
            .appendingPathComponent("archived")
            .appendingPathComponent("public")
    }

    /// List Private Archived Threads
    /// - Method: GET
    public static func listPrivateArchivedThreads(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("threads")
            .appendingPathComponent("archived")
            .appendingPathComponent("private")
    }

    /// List Joined Private Archived Threads
    /// - Method: GET
    public static func listJoinedPrivateArchivedThreads(
        _ channelId: Snowflake
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("channels")
            .appendingPathComponent(String(channelId))
            .appendingPathComponent("users")
            .appendingPathComponent("@me")
            .appendingPathComponent("threads")
            .appendingPathComponent("archived")
            .appendingPathComponent("private")
    }

    /// Get Invite
    /// - Method: GET
    public static func getInvite(
        _ inviteCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("invites")
            .appendingPathComponent(String(inviteCode))
    }

    /// Delete Invite
    /// - Method: DELETE
    public static func deleteInvite(
        _ inviteCode: String
    ) -> URL {
        DISCORD_API_URL
            .appendingPathComponent("invites")
            .appendingPathComponent(String(inviteCode))
    }

    /// Get Gateway
    /// - Method: GET
    public static func getGateway() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("gateway")
    }

    /// Get Gateway Bot
    /// - Method: GET
    public static func getGatewayBot() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("gateway")
            .appendingPathComponent("bot")
    }

    /// Get Current Bot Application Information
    /// - Method: GET
    public static func getCurrentBotApplicationInformation() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("oauth2")
            .appendingPathComponent("applications")
            .appendingPathComponent("@me")
    }

    /// Get Current Authorization Information
    /// - Method: GET
    public static func getCurrentAuthorizationInformation() -> URL {
        DISCORD_API_URL
            .appendingPathComponent("oauth2")
            .appendingPathComponent("@me")
    }
}
