//
//  SignUpViewController.swift
//  InstaSign
//
//  Created by Sanjar Aslonov on 14/02/22.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: Methods

    
    
    // MARK: Actions
    
    @IBAction func onSignedUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onSignedIn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
