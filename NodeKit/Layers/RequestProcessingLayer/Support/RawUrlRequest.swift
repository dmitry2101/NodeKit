//
//  RawUrlRequest.swift
//  CoreNetKit
//
//  Created by Александр Кравченков on 23/03/2019.
//  Copyright © 2019 Кравченков Александр. All rights reserved.
//

import Foundation
import Alamofire

/// Обертка над URLRequest.
public struct UrlNetworkRequest {
    /// Данные запроса.
    let urlRequest: URLRequest
}

/// Обертка над `Alamofire.DataRequest`
public struct RawUrlRequest {

    /// Alamifire запрос.
    public let dataRequest: DataRequest

    /// Конвертирвет себя в `UrlNetworkRequest`
    ///
    /// - Returns: Новое представление запроса.
    public func toUrlRequest() -> UrlNetworkRequest? {

        guard let urlRequest = self.dataRequest.request else {
            return nil
        }

        return UrlNetworkRequest(urlRequest: urlRequest)
    }
}
