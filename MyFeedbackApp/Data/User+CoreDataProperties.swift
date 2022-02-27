//
//  User+CoreDataProperties.swift
//  MyFeedbackApp
//
//  Created by Pablo De La Cruz on 2/26/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }
    
    @NSManaged public var username: String?
    @NSManaged public var password: String?
//    @NSManaged var array: NSArray? //no error
    @NSManaged public var answers: [NSNumber]?

}

extension User : Identifiable {

}
