//
//  EventCollectionViewCell.swift
//  ManagementCollectionView
//
//  Created by Cntt20 on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    //
    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var titleEvent: UILabel!
    
    //
    func configCellWith(event: Event){
        titleEvent.text = event.title
        imageEvent.image = event.eventImage
    }
}
