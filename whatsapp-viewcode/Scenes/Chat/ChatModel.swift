//
//  ChatModel.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 07/07/22.
//

import Foundation
import UIKit

struct Participant: Codable {
    var id: String;
    var name: String;
    var imageURL: String;
    var image: Data?;
}

struct Message: Codable {
    var id: String;
    var participantId: String;
    var text: String;
}

struct ChatModel: Codable {
    var id: String;
    var participants: [Participant];
    var messages: [Message];
}
