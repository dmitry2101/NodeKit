//
//  CancellableContext.swift
//  CoreNetKit
//
//  Created by Александр Кравченков on 09.12.2017.
//  Copyright © 2017 Кравченков Александр. All rights reserved.
//

public protocol CancellableContext {
    @discardableResult
    func cancel() -> Self
}
