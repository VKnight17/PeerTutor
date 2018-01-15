//
//  LoggedInViewController.swift
//  PeerTutor
//
//  Created by Tang Tantivirun on 1/15/18.
//  Copyright © 2018 SPS. All rights reserved.
//

import Foundation
import FirebaseAuth

class LoggedInViewController: UIViewController {
    @IBAction func logoutTapped(sender: AnyObject) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoggedInViewController")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
}

