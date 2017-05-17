//
//  ViewDetailAndEditViewController.swift
//  ManagementCollectionView
//
//  Created by Cntt20 on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class ViewDetailAndEditViewController: UIViewController {
    //
    @IBOutlet weak var imageEventD: UIImageView!
    @IBOutlet weak var titleEventD: UILabel!
    @IBOutlet weak var descriptionEventD: UILabel!
    @IBOutlet weak var dayEventD: UILabel!
    
    //
    var event: Event?
    var day: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        //
        configureEvent()

        // Do any additional setup after loading the view.
    }
    //
    func configureEvent() {
        self.imageEventD.image = event?.eventImage
        self.titleEventD.text = event?.title
        self.descriptionEventD.text = event?.description
        self.dayEventD.text = day
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
