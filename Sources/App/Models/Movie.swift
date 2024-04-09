//
//  File.swift
//  
//
//  Created by Руслан Абрамов on 09.04.2024.
//

import Foundation
import Fluent
import Vapor

final class Movie: Model, Content {
    static let schema: String = "movies"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String

    init() { }

    init(id: UUID?, title: String) {
        self.id = id
        self.title = title
    }
}
