//
//  Event.swift
//  ManagementCollectionView
//
//  Created by Cntt20 on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import Foundation
import UIKit

class Event
{
    var title: String
    var description: String
    var eventImage: UIImage
    
    init(titled: String, description: String, eventImaged: UIImage)
    {
        self.title = titled
        self.description = description
        self.eventImage = eventImaged
    }
}
