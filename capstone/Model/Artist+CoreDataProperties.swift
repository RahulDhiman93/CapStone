//
//  Artist+CoreDataProperties.swift
//  capstone
//
//  Created by Rahul Dhiman on 28/12/17.
//  Copyright © 2017 Rahul Dhiman. All rights reserved.
//

import Foundation
import CoreData

extension Artist {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Artist>{
        return NSFetchRequest<Artist>(entityName: "Artist")
}
    
    @NSManaged public var name:String
    
    convenience init(name:String ,context: NSManagedObjectContext){
        if let entit = NSEntityDescription.entity(forEntityName: "Artist", in: context)
        {
            self.init(entity: entit, insertInto:context)
           self.name = name
        }
        else{
            fatalError("NO ENTITY FOUND!!")
        }
    }
}

    
    

