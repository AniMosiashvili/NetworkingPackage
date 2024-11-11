//
//  NetworkProtocol.swift
//  NetworkingPackage
//
//  Created by Anna Harris on 11.11.24.
//

import Foundation

public protocol NetworkProtocol {
    func fetchData<T: Decodable & Sendable>(from url: URL, completion: @escaping @Sendable (Result<T, Error>) -> Void)
}
