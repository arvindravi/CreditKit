// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let creditInformationRawResponse = try CreditInformationRawResponse(json)

import Foundation

// MARK: - CreditInformationRawResponse
public struct CreditInformationRawResponse: Codable {
    let accountIDVStatus: String
    let creditReportInfo: CreditReportInfo
    let dashboardStatus, personaType: String
    let coachingSummary: CoachingSummary
    let augmentedCreditScore: JSONNull?
}

// MARK: CreditInformationRawResponse convenience initializers and mutators

extension CreditInformationRawResponse {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreditInformationRawResponse.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        accountIDVStatus: String? = nil,
        creditReportInfo: CreditReportInfo? = nil,
        dashboardStatus: String? = nil,
        personaType: String? = nil,
        coachingSummary: CoachingSummary? = nil,
        augmentedCreditScore: JSONNull?? = nil
    ) -> CreditInformationRawResponse {
        return CreditInformationRawResponse(
            accountIDVStatus: accountIDVStatus ?? self.accountIDVStatus,
            creditReportInfo: creditReportInfo ?? self.creditReportInfo,
            dashboardStatus: dashboardStatus ?? self.dashboardStatus,
            personaType: personaType ?? self.personaType,
            coachingSummary: coachingSummary ?? self.coachingSummary,
            augmentedCreditScore: augmentedCreditScore ?? self.augmentedCreditScore
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CoachingSummary
struct CoachingSummary: Codable {
    let activeTodo, activeChat: Bool
    let numberOfTodoItems, numberOfCompletedTodoItems: Int
    let selected: Bool
}

// MARK: CoachingSummary convenience initializers and mutators

extension CoachingSummary {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CoachingSummary.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        activeTodo: Bool? = nil,
        activeChat: Bool? = nil,
        numberOfTodoItems: Int? = nil,
        numberOfCompletedTodoItems: Int? = nil,
        selected: Bool? = nil
    ) -> CoachingSummary {
        return CoachingSummary(
            activeTodo: activeTodo ?? self.activeTodo,
            activeChat: activeChat ?? self.activeChat,
            numberOfTodoItems: numberOfTodoItems ?? self.numberOfTodoItems,
            numberOfCompletedTodoItems: numberOfCompletedTodoItems ?? self.numberOfCompletedTodoItems,
            selected: selected ?? self.selected
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CreditReportInfo
struct CreditReportInfo: Codable {
    let score, scoreBand: Int
    let clientRef, status: String
    let maxScoreValue, minScoreValue, monthsSinceLastDefaulted: Int
    let hasEverDefaulted: Bool
    let monthsSinceLastDelinquent: Int
    let hasEverBeenDelinquent: Bool
    let percentageCreditUsed, percentageCreditUsedDirectionFlag, changedScore, currentShortTermDebt: Int
    let currentShortTermNonPromotionalDebt, currentShortTermCreditLimit, currentShortTermCreditUtilisation, changeInShortTermDebt: Int
    let currentLongTermDebt, currentLongTermNonPromotionalDebt: Int
    let currentLongTermCreditLimit, currentLongTermCreditUtilisation: JSONNull?
    let changeInLongTermDebt, numPositiveScoreFactors, numNegativeScoreFactors, equifaxScoreBand: Int
    let equifaxScoreBandDescription: String
    let daysUntilNextReport: Int
}

// MARK: CreditReportInfo convenience initializers and mutators

extension CreditReportInfo {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreditReportInfo.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        score: Int? = nil,
        scoreBand: Int? = nil,
        clientRef: String? = nil,
        status: String? = nil,
        maxScoreValue: Int? = nil,
        minScoreValue: Int? = nil,
        monthsSinceLastDefaulted: Int? = nil,
        hasEverDefaulted: Bool? = nil,
        monthsSinceLastDelinquent: Int? = nil,
        hasEverBeenDelinquent: Bool? = nil,
        percentageCreditUsed: Int? = nil,
        percentageCreditUsedDirectionFlag: Int? = nil,
        changedScore: Int? = nil,
        currentShortTermDebt: Int? = nil,
        currentShortTermNonPromotionalDebt: Int? = nil,
        currentShortTermCreditLimit: Int? = nil,
        currentShortTermCreditUtilisation: Int? = nil,
        changeInShortTermDebt: Int? = nil,
        currentLongTermDebt: Int? = nil,
        currentLongTermNonPromotionalDebt: Int? = nil,
        currentLongTermCreditLimit: JSONNull?? = nil,
        currentLongTermCreditUtilisation: JSONNull?? = nil,
        changeInLongTermDebt: Int? = nil,
        numPositiveScoreFactors: Int? = nil,
        numNegativeScoreFactors: Int? = nil,
        equifaxScoreBand: Int? = nil,
        equifaxScoreBandDescription: String? = nil,
        daysUntilNextReport: Int? = nil
    ) -> CreditReportInfo {
        return CreditReportInfo(
            score: score ?? self.score,
            scoreBand: scoreBand ?? self.scoreBand,
            clientRef: clientRef ?? self.clientRef,
            status: status ?? self.status,
            maxScoreValue: maxScoreValue ?? self.maxScoreValue,
            minScoreValue: minScoreValue ?? self.minScoreValue,
            monthsSinceLastDefaulted: monthsSinceLastDefaulted ?? self.monthsSinceLastDefaulted,
            hasEverDefaulted: hasEverDefaulted ?? self.hasEverDefaulted,
            monthsSinceLastDelinquent: monthsSinceLastDelinquent ?? self.monthsSinceLastDelinquent,
            hasEverBeenDelinquent: hasEverBeenDelinquent ?? self.hasEverBeenDelinquent,
            percentageCreditUsed: percentageCreditUsed ?? self.percentageCreditUsed,
            percentageCreditUsedDirectionFlag: percentageCreditUsedDirectionFlag ?? self.percentageCreditUsedDirectionFlag,
            changedScore: changedScore ?? self.changedScore,
            currentShortTermDebt: currentShortTermDebt ?? self.currentShortTermDebt,
            currentShortTermNonPromotionalDebt: currentShortTermNonPromotionalDebt ?? self.currentShortTermNonPromotionalDebt,
            currentShortTermCreditLimit: currentShortTermCreditLimit ?? self.currentShortTermCreditLimit,
            currentShortTermCreditUtilisation: currentShortTermCreditUtilisation ?? self.currentShortTermCreditUtilisation,
            changeInShortTermDebt: changeInShortTermDebt ?? self.changeInShortTermDebt,
            currentLongTermDebt: currentLongTermDebt ?? self.currentLongTermDebt,
            currentLongTermNonPromotionalDebt: currentLongTermNonPromotionalDebt ?? self.currentLongTermNonPromotionalDebt,
            currentLongTermCreditLimit: currentLongTermCreditLimit ?? self.currentLongTermCreditLimit,
            currentLongTermCreditUtilisation: currentLongTermCreditUtilisation ?? self.currentLongTermCreditUtilisation,
            changeInLongTermDebt: changeInLongTermDebt ?? self.changeInLongTermDebt,
            numPositiveScoreFactors: numPositiveScoreFactors ?? self.numPositiveScoreFactors,
            numNegativeScoreFactors: numNegativeScoreFactors ?? self.numNegativeScoreFactors,
            equifaxScoreBand: equifaxScoreBand ?? self.equifaxScoreBand,
            equifaxScoreBandDescription: equifaxScoreBandDescription ?? self.equifaxScoreBandDescription,
            daysUntilNextReport: daysUntilNextReport ?? self.daysUntilNextReport
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(0)
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
