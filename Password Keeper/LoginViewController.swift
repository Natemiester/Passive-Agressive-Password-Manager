//
//  LoginViewController.swift
//  Password Keeper
//
//  Created by nmyren on 5/1/15.
//  Copyright (c) 2015 nmyren. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, passDataBack
{
    var username: String!
    var password: String!
    var newUsername : String!
    var newPassword : String!
    
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var userTextField: UITextField!
    override func viewDidLoad()
    {
        self.view.backgroundColor = UIColor.darkGrayColor()
        passTextField.backgroundColor = UIColor.blackColor()
        var nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.orangeColor()
        super.viewDidLoad()
        println(newUsername)
       
        
    }
    @IBAction func Login(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var secondVC = (segue.destinationViewController as RegisterViewController)
        secondVC.delegate = self
        secondVC.oldPassword = password
    }
    
    func writeBack(name: String, pass: String)
    {
        newUsername = name
        newPassword = pass
        println(newUsername)
    }
   
}

protocol passDataBack{
    func writeBack(name: String, pass: String)

}
