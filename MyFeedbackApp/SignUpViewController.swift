//
//  SignUpViewController.swift
//  MyFeedbackApp
//
//  Created by Pablo De La Cruz on 2/26/22.
//

import UIKit

class SignUpViewController: ViewController {

    
    @IBOutlet weak var userNameSignUp: UITextField!
    
    @IBOutlet weak var passwordSignUp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //Core Data 'create' method
    @IBAction func signUpButton(_ sender: Any) {

        let newUser = User(context: context)
        newUser.username = userNameSignUp.text!
        newUser.password = passwordSignUp.text!

        do{
            try context.save()
            print("User context saved")
        } catch{
            
        }
    }
    
}
