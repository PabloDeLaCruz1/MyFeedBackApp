//
//  RoomViewController.swift
//  MyFeedbackApp
//
//  Created by Pablo De La Cruz on 2/26/22.
//

import UIKit

class RoomViewController: ViewController {

    @IBOutlet weak var q1cb1: CheckBox!
    @IBOutlet weak var q1cb2: CheckBox!
    @IBOutlet weak var q1cb3: CheckBox!
    
    var q1 : Int?
    var q2 : Int? = 0

    var q3 : Int? = 0

    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("user from roomview controller", user?.username!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func q1cb1Tapped(_ sender: Any) {
        q1cb2.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1cb3.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1 = 1
    }
    
    @IBAction func q1cb2Tapped(_ sender: Any) {
        q1cb1.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1cb3.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1 = 2
    }
    @IBAction func q1cb3Tapped(_ sender: Any) {
        q1cb2.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1cb1.setImage(UIImage(systemName: "checkmark.circle")! as UIImage, for: UIControl.State.normal)
        q1 = 3
    }
    
    
    
    @IBAction func submitFoodFeedback(_ sender: Any) {
        var answersArr : Array<Int> = [q1!,q2!,q3!]
        updateFeedback(answersArr)
    }
    
    func updateFeedback(_ answersArr : Array<Int>){
        user?.answers = answersArr
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  
}
