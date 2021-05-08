//
//  DataModel.swift
//  practice-seminar4
//
//  Created by kimhyungyu on 2021/05/08.
//

// MARK: - PersonDataModel

struct PersonDataModel: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: Person
}

// MARK: - Person

struct Person: Codable {
    let name, profileMessage: String

    enum CodingKeys: String, CodingKey {
        case name
        case profileMessage = "profile_message"
    }
}
