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

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func continueButtonTapped(_ sender: Any) {
        let vc = HomeViewController()
        navigationController?.pushViewController(vc, animated: true)
        login()
        
    }
    
    func login() {
        let parameters:[String:Any] = [
        "email":"fred@gmail.com",
        "password":"1234"
        ]
        AF.request("https://acl-hoonian.herokuapp.com/login", method: .post, parameters: parameters, encoding: JSONEncoding.default)
        .responseJSON { response in
//            print(response)
            do {
                let json = try JSON(data: response.data!)
//                print(json["data"]["token"])
                // make sure this JSON is in the format we expect
                if  let modelDataLogin = try JSONDecoder().decode(ModelDataLogin.self, from: json["data"].rawData()) as? ModelDataLogin {
                    // try to read out a string array
                    
                    print(modelDataLogin.token!)
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
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
