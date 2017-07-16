//
//  History+CoreDataProperties.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/15.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import Foundation
import CoreData


extension History {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<History> {
        return NSFetchRequest<History>(entityName: "History")
    }

    @NSManaged public var saveDate: NSDate?
    @NSManaged public var result: String?

}
