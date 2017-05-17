//
//  ManagementEventCollectionViewController.swift
//  ManagementCollectionView
//
//  Created by Cntt20 on 5/13/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ManagementEventCollectionViewController: UICollectionViewController {
    
    //
    @IBOutlet var MyCollectionView: UICollectionView!
    
    //
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    //

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView?.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        let eventLine = eventLines[section]
        return eventLine.events.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Event Cell", for: indexPath) as! EventCollectionViewCell
        
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        cell.configCellWith(event: event)
        return cell
    }
    
    //
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Reusable View", for: indexPath) as! ManagementCollectionReusableView
        
        let eventLine = eventLines[indexPath.section]
        
        headerView.dayOfWeeks.text = eventLine.dates
        
        return headerView
    }
    //
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //
        let option = UIAlertController(title: "Option!!!", message: "Make a choice", preferredStyle: .actionSheet)
        //Show detail event
        option.addAction(UIAlertAction(title: "Event Detail", style: .default, handler: { (action:UIAlertAction) in
            print("Event Detail")
            let eventLine = self.eventLines[indexPath.section]
            let event = eventLine.events[indexPath.row]
            let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Show Detail") as! ViewDetailAndEditViewController
            detailVC.day = eventLine.dates
            detailVC.event = event
            self.navigationController?.pushViewController(detailVC, animated: true)
        }))
        //Delete event
        option.addAction(UIAlertAction(title: "Delete Event", style: .default, handler: { (action:UIAlertAction) in
            
            print("Delete")
            let eventLine = self.eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            self.MyCollectionView.deleteItems(at: [indexPath])
            
        }))
        //Cancel
        option.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(option, animated: true, completion: nil)
        //
 
    }
    //
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Add Event" {
            //
            //let indexPath = collectionView?.indexPathsForVisibleItems
            let add = segue.destination as! AddEventViewController
            add.eventAdd = eventLines
            //
        }
        }
        /*
        if segue.identifier == "Add Student" {
            let addVC = segue.destination as! AddStudentViewController
            addVC.studentList = studentList
            tableView.reloadData()
        }
 */
 
}

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
 

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return true
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
 
    }
 */

