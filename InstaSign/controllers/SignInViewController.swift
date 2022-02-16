//
//  SignInViewController.swift
//  InstaSign
//
//  Created by Sanjar Aslonov on 14/02/22.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    // MARK: - Methods
    
    func callSignUpController() {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }
    
    func callHomeController() {
    }
    
    // MARK: - Actions
    
    @IBAction func onSignedIn(_ sender: Any) {
        sceneDelegate().callHomeController()
    }
    
    
    @IBAction func onSignedUp(_ sender: Any) {
        callSignUpController()
    }
}
