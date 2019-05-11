//
//  FormModel.swift
//  SSForms
//
//  Created by Suraj on 5/11/19.
//  Copyright © 2019 Suraj. All rights reserved.
//

import Foundation

struct GetFormModel {
    let firstName: String?
    let lastName: String?
    
    init(firstName: String?, lastName: String?) {// default struct initializer
        self.firstName = firstName
        self.lastName = lastName
    }
}
extension GetFormModel: Decodable {
    enum CodingKeys: String, CodingKey { // declaring our keys
        case firstName = "FirstName"
        case lastName = "LastName"
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        let firstName: String = try container.decode(String.self, forKey: .firstName) // extracting the data
        let lastName: String = try container.decode(String.self, forKey: .lastName) // extracting the data
         // initializing our struct
        self.init(firstName: firstName, lastName: lastName)
    }
}
extension GetFormModel: Encodable {
   
}
