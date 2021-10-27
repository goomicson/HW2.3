//
//  LoginViewController.swift
//  HW2.3
//
//  Created by Сергей on 26.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    let loginIs = "admin"
    let passwordIs = "unforgetable"
    
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        
    }
    
    @IBAction func forgotLoginButton() {
        showInfoAsAlert(title: "Your login is", message: loginIs)
        
    }
    
    @IBAction func forgotPasswordButton() {
        showInfoAsAlert(title: "Your password is", message: passwordIs)
    }

    
    
    @IBAction func loginButtonTouched() {
        // checking authentification data
        if loginIs == loginTextField.text {
            if passwordIs == passwordTextField.text {
                guard let welcomeVC = storyboard?.instantiateViewController(withIdentifier: "loggedIN") as? WelcomeViewController else { return }
                welcomeVC.enteredLogin = loginTextField.text
                loginTextField.text = ""
                passwordTextField.text = ""
                present(welcomeVC, animated: true)
            } else {
                showInfoAsAlert(title: "Error", message: "Login of password is wrong")
            }
        } else {
            showInfoAsAlert(title: "Error", message: "Login of password is wrong")
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue){
        guard let welcomeVC = storyboard?.instantiateViewController(withIdentifier: "LoginScreen") as? WelcomeViewController else { return }
        present(welcomeVC, animated: true)
        
    }
    
}

extension LoginViewController {
    private func showInfoAsAlert (title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}
