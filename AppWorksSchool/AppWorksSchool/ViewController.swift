//
//  ViewController.swift
//  AppWorksSchool
//
//  Created by Eleanor Peng on 2020/9/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var checkField: UITextField!
    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBAction func indexChanged(_ sender: Any) {
        checkState()
        clearField()
        self.view.endEditing(true)
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        self.view.endEditing(true)
        if self.accountField.text?.isEmpty ?? true {
            showAlert(message: "Account should not be empty.")
        } else if self.passwordField.text?.isEmpty ?? true {
            showAlert(message: "Password should not be empty.")
        } else if segmentedControl.selectedSegmentIndex == 0 {
            checkLoginCondition()
        } else if segmentedControl.selectedSegmentIndex == 1 {
            checkSignupCondition()
        }
        
        
    }
    
    var action: UIAlertAction {
        return UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { _ in self.clearField() })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkField.delegate = self
        accountField.delegate = self
        passwordField.delegate = self
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        checkState()
        
    }

    func checkState(){
        var login: Bool
        if segmentedControl.selectedSegmentIndex == 0 {
            login = true
        } else {
            login = false
        }
        button.setTitle(login ? "Log in" : "Sign up", for: .normal)
        checkLabel.textColor = login ? UIColor.gray : UIColor.black
        checkField.isUserInteractionEnabled = login ? false : true
        checkField.backgroundColor = login ? UIColor.gray : UIColor.white
        
        segmentedControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.white],
            for: .normal
        )
        
        segmentedControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.black],
            for: .selected
        )

    }
    
    func checkLoginCondition() {
         if accountField.text != "appworks_school@gmail.com" && passwordField.text != "1234"{
            showAlert(message: "Login failed.")
         } else {
            let alert = UIAlertController(title: "Login Successful!", message: "You have successfully logged in.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
         }
    }
    
    func checkSignupCondition() {
        if self.checkField.text?.isEmpty ?? true {
            showAlert(message: "Check Password should not be empty.")
        } else if !(passwordField.text?.isEmpty ?? true) && !(accountField.text?.isEmpty ?? true){
            if checkField.text != passwordField.text {
                showAlert(message: "Signup failed.")
            } else {
                let alert = UIAlertController(title: "Thank You For Signing Up", message: "Congrats! You have successfully signed up.", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func clearField() {
        self.accountField.text = ""
        self.passwordField.text = ""
        self.checkField.text = ""
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    private func switchTextField(_ textField: UITextField) {
        switch textField {
        case self.accountField:
            self.passwordField.becomeFirstResponder()
        case self.passwordField:
            if segmentedControl.selectedSegmentIndex == 1{
                self.checkField.becomeFirstResponder()
            }
            self.passwordField.resignFirstResponder()
        default:
            self.checkField.resignFirstResponder()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchTextField(textField)
        return true
    }
    
}


