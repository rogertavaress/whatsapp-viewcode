//
//  GetChatDataService.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 06/07/22.
//

import Foundation
import Alamofire

enum GetChatDataServiceError: Error {
    case urlInvalid
    case noDataAvailable
}

protocol GetChatDataServiceProtocol {
    func execute(completion: @escaping (Result<[ChatListItemModel], GetChatDataServiceError>) -> Void)
}

struct GetChatDataService: GetChatDataServiceProtocol {
    private let session = URLSession.shared
    private let url = "https://run.mocky.io/v3/27f9cd5f-ae65-4379-bd48-6df65fa5177e"
    
    static var shared: GetChatDataService {
        let instance = GetChatDataService()
        return instance
    }
    
    func execute(completion: @escaping (Result<[ChatListItemModel], GetChatDataServiceError>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(.urlInvalid))
            return
        }
        
        AF.request(url, method: .get).validate().responseDecodable(of: [ChatListItemModel].self) { response in
            guard let chats = response.value else {
                completion(.failure(.noDataAvailable))
                return
            }
            
            completion(.success(chats))
        }
    }
}
