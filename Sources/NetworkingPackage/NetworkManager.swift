// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public class NetworkManager: NetworkProtocol {
    public init() {}

    public func fetchData<T: Decodable & Sendable>(from url: URL, completion: @escaping @Sendable (Result<T, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { [completion] data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
