//
//  AddEventViewController.swift
//  ManagementCollectionView
//
//  Created by miceli on 5/15/17.
//  Copyright © 2017 Dau Khac Bac. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    //
    let dayList = [ "Sunday", "Monday", "Tuesday", "Wednessday", "Thursday", "Friday", "Saturday"]
    var eventAdd: [EventLine]?
    //
    @IBOutlet weak var imageEvent: UIImageView!
    @IBOutlet weak var titleEvent: UITextField!
    @IBOutlet weak var descriptionEvent: UITextField!
    
    @IBOutlet weak var dayPicked: UIPickerView!
    //
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        imagePicker.delegate = self
        self.dayPicked.delegate = self
        self.dayPicked.dataSource = self
        //
        
                // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //
    @IBAction func addImage(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                self.imagePicker.sourceType = .camera
                self.present(self.imagePicker, animated: true, completion: nil)
            }else{
                print("Camera not available")
            }
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
            self.imagePicker.sourceType = .photoLibrary
            self.present(self.imagePicker, animated: true, completion: nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    //
    @IBAction func addEvent(_ sender: UIButton) {
        
        
    }
    
    //
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageEvent.contentMode = .center
            imageEvent.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    private func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    //
    //Số components của PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Số hàng trong 1 component của PickerView
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 7
    }
    
    //Tiêu đề (Nội dung) cho mỗi row trong componenet
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return dayList[row]
    }
    
    //Event Add button
    @IBAction func btn_addEvent(_ sender: UIButton)
    {
        let dayInWeek = eventAdd?[dayPicked.selectedRow(inComponent: 0)]
        
        dayInWeek?.events.append(Event(titled: self.titleEvent.text!, description:  self.descriptionEvent.text!, eventImaged: #imageLiteral(resourceName: "ios")))
        
        _ = navigationController?.popViewController(animated: true)
    }
    

    //Kiểm tra thứ của ngày hiện tại
    func getCurrenntDay() -> Int {
        let currentDate = Date()
        let calendar = Calendar.current
        
        let day = calendar.component(.day, from: currentDate)
        var month = calendar.component(.month, from: currentDate)
        var year = calendar.component(.year, from: currentDate)
        
        if month < 3 {
            month += 12
            year -= 1
        }
        
        return (abs(day + 2 * month + 3 * (month + 1) / 5 + year + year / 4) % 7)
    }
    //
    func setDayEvent() {
        let numberOfDay = getCurrenntDay()
        
        switch numberOfDay {
        case 1:
            dayPicked.selectRow(0, inComponent: 0, animated: true)
        case 2:
            dayPicked.selectRow(1, inComponent: 0, animated: true)
        case 3:
            dayPicked.selectRow(2, inComponent: 0, animated: true)
        case 4:
            dayPicked.selectRow(3, inComponent: 0, animated: true)
        case 5:
            dayPicked.selectRow(4, inComponent: 0, animated: true)
        case 6:
            dayPicked.selectRow(5, inComponent: 0, animated: true)
        default:
            dayPicked.selectRow(6, inComponent: 0, animated: true)
        }
    }
    
    //
    // while editing a text field.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func userTapOnScreen(_ sender: Any) {
        titleEvent.resignFirstResponder()
        descriptionEvent.resignFirstResponder()
    }
    
    //
    func DismissKeyboard(){
        view.endEditing(true)
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
