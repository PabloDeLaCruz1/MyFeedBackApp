//
//  MainFeedbackScreenViewController.swift
//  MyFeedbackApp
//
//  Created by Pablo De La Cruz on 2/26/22.
//

import UIKit

class MainFeedbackScreenViewController: ViewController {

    @IBOutlet weak var mainScreenHeader: UILabel!
    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        mainScreenHeader.text = "Welcome \((user?.username)!)!"

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let s = segue.destination as! RoomViewController
        s.user = self.user
    }


}
