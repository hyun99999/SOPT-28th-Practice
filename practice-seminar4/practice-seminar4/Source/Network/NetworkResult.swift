//
//  NetworkResult.swift
//  practice-seminar4
//
//  Created by kimhyungyu on 2021/05/08.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
