//
//  LoginViewController.swift
//  memuDemo
//
//  Created by Jai Pugalia on 1/31/17.
//  Copyright © 2017 Parth Changela. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title:"Alert",message:userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:
            UIAlertActionStyle.default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
        
    }
    

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    @IBAction func loginAction(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let SWRevealViewController = storyboard.instantiateViewController(withIdentifier: "RearViewController") as! SWRevealViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = SWRevealViewController

    
    
    if self.emailTextField.text == "" || self.passwordTextField.text == "" {
    
    //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
    
    displayMyAlertMessage(userMessage: "All fields are required");
    return;
    
    } else {
    
    // below are the given username and password to login
    
    if (self.emailTextField.text == "admin@gmail.com")  {
    
    if (self.passwordTextField.text == "admin")   {
    
    
    //Print into the console if successfully logged in
    print("You have successfully logged in")
    
    //Go to the HomeViewController if the login is sucessful
    
    self.performSegue(withIdentifier:"View", sender:self)
        
       // presentViewController( UIViewController, animated: true, completion: nil)
    
    //let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
    //self.present(vc!, animated: true, completion: nil)
    }
    
    }
    
        }
    if self.emailTextField.text != "admin@gmail.com"  || self.passwordTextField.text != "admin" {
    
    //Tells the user that there is an error and then gets firebase to tell them the error
    
    displayMyAlertMessage(userMessage: "Email id and password does not match")
    
    return;
    }

        }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
