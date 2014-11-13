//
//  QuoteObject.swift
//  ControllingSource
//
//  Created by Audrey M Tam on 13/11/2014.
//  Copyright (c) 2014 Ray Wenderlich. All rights reserved.
//

import Foundation
import CoreData

class QuoteObject: NSManagedObject {

    @NSManaged var famousQuote: String
    @NSManaged var personName: String

}
