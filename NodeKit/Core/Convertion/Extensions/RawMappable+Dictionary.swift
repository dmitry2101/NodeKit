//
//  File.swift
//  CoreNetKit
//
//  Created by Александр Кравченков on 23/03/2019.
//  Copyright © 2019 Кравченков Александр. All rights reserved.
//

import Foundation

/// Это расширение позволяет представлять словарь как RawMappable в случае если словарь это Json
extension Dictionary: RawMappable where Dictionary.Key == String, Dictionary.Value == Any {

    /// Провсто возвращет себя.
    /// - Throws: Не генерирует ошибок.
    public func toRaw() throws -> Json {
        return self
    }

    /// Просто возвращает json, который получил на вход.
    /// - Throws: Не генерирует ошибок
    public static func from(raw: Json) throws -> Dictionary<Key, Value> {
        return raw
    }
}
