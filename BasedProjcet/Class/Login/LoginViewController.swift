//
//  LoginViewController.swift
//  BasedProjcet
//
//  Created by Gregory Kevin on 01/07/20.
//  Copyright © 2020 Malvin Santoso. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func continueButtonTapped(_ sender: Any) {
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
        
        ACRequest.POST_SIGNIN(email: emailTextField.text!, password: passwordTextField.text!, successCompletion: { (loginData) in
            ACData.LOGINDATA = loginData
            SVProgressHUD.dismiss()
            print(ACData.LOGINDATA.token)
            print(ACData.LOGINDATA.menuNavbars[0].mobileMenuDesc)
            print(ACData.LOGINDATA.userAccess[0].name)
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            appDelegate?.goToHome()
        }) { (message) in
            SVProgressHUD.dismiss()
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
//    func login() {
//        let parameters:[String:Any] = [
//            "email":"fred@gmail.com",
//            "password":"1234"
//        ]
//        AF.request("https://acl-hoonian.herokuapp.com/login", method: .post, parameters: parameters, encoding: JSONEncoding.default)
//        .responseJSON { response in
////            print(response)
//            do {
//                let json = try JSON(data: response.data!)
//                // make sure this JSON is in the format we expect
//                if let modelDataLogin = try JSONDecoder().decode(ModelDataLogin.self, from: json["data"].rawData()) as? ModelDataLogin {
//                    // try to read out a string array
//
//
//                }
//
//
//            } catch let error as NSError {
//                print("Failed to load: \(error.localizedDescription)")
//            }
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
