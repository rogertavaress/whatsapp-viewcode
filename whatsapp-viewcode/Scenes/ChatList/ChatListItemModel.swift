//
//  ChatListItemModel.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 06/07/22.
//

import Foundation

struct ChatListItemModel: Codable {
    var image: String?
    let name, lastMessage, date: String
}
