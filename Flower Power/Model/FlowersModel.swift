//
//  FlowersModel.swift
//  Flower Power
//
//  Created by Beuca Alexandru on 10.07.2021.
//

import Foundation

struct Flower: Codable {
    let id: Int
    let description: String
    let price: Int
    let image_url: String
    let deliver_to: DeliverTo
}

struct DeliverTo: Codable {
    let name, address: String
}
