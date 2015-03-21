//
//  Result.swift
//  ErrNo
//
//  Created by Neil Pankey on 3/21/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import LlamaKit

/// Wraps `lastError()` in a failed `Result`.
public func lastFailure<T>() -> Result<T, ErrNo> {
    return failure(lastError()!)
}

/// Checks `returnCode` and wraps it in a `Result`. Returns a `failure` if < 0, an empty `success` otherwise.
public func try(returnCode: Int32) -> Result<(), ErrNo> {
    return returnCode < 0 ? lastFailure() : success(())
}

/// Checks `returnCode` and wraps it in a `Result`. Returns a `failure` if < 0, otherwise `success` with the value from `ifSuccessful`.
public func tryMap<T>(returnCode: Int32, ifSuccessful: Int32 -> T) -> Result<T, ErrNo> {
    return returnCode < 0 ? lastFailure() : success(ifSuccessful(returnCode))
}
