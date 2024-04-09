//
//  File.swift
//  
//
//  Created by Руслан Абрамов on 09.04.2024.
//

import Foundation
import Fluent

struct CreateMoviesTableMigration: AsyncMigration {
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("movies").id().field("title", .string, .required).create()
    }

    func revert(on database: Database) async throws {
        try await database.schema("movies").delete()
    }
}
