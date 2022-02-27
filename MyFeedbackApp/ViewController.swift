//
//  ViewController.swift
//  MyFeedbackApp
//
//  Created by Pablo De La Cruz on 2/26/22.
//

import UIKit

struct UserObj {
    var name: String
    var pass: String

}
class ViewController: UIViewController {

    //In the context is where you make objects in core datas database
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    private var models = [User]()

    @IBOutlet weak var usernameSignIn: UITextField!

    @IBOutlet weak var passwordSignIn: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func getUser(_ userName : String,_ password: String) -> User? {
        User.fetchRequest().fetchLimit = 1
        User.fetchRequest().predicate = NSPredicate(format: "username == %@", usernameSignIn)

        do {
            models = try context.fetch(User.fetchRequest())
        }
        catch {

        }
        for user in models {
            print("Username \(index)", user.username)
            if userName == user.username && password == user.password {
                return user
            }
        }
        return nil
    }

//Core Data 'get' method
    @IBAction func signInSegueBtn(_ sender: Any) {
//
        let user = getUser(usernameSignIn.text!, passwordSignIn.text!)

        if user != nil {
//            print(user)
//            print((user?.answers)!)

            print("You have signed in")
            let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            guard let mainFeedbackScreenViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainFeedbackScreenViewController") as? MainFeedbackScreenViewController
            else{
                return
            }
            mainFeedbackScreenViewController.user = user
                    navigationController?.pushViewController(mainFeedbackScreenViewController, animated: true)
        } else {
//
            
            print("Wrong username and or password, try again!")

        }
        
    }
    
}
