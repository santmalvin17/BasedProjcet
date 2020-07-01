//
//  LoginViewController.swift
//  BasedProjcet
//
//  Created by Gregory Kevin on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import UIKit
import SwiftyJSON

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func continueButtonTapped(_ sender: Any) {
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
         UserDefaults.standard.string(forKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZyZWRAZ21haWwuY29tIiwiaWF0IjoxNTkzNjAwNDA2LCJleHAiOjE1OTM2MDEwMDZ9.JD3Fe-i03OyXbshdXwN0rHUB4zF1jV2Agu0ROdbsgrw")
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
