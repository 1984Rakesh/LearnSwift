import Foundation
import UIKit
import SwiftUI

public class LoginViewController : UIViewController, UITextFieldDelegate {
    
    lazy private var txtfUserName : UITextField = {
        var textfield = self.newTextField()
        textfield.placeholder = "Username"
        return textfield
    }()
    
    lazy private var txtPassword : UITextField = {
        var textfield = self.newTextField()
        textfield.placeholder = "Password"
        return textfield
    }()
    
    lazy private var stackView : UIStackView = {
        let subViews = [self.txtfUserName,self.txtPassword,self.btnLogin,UIView()]
        var stackView = UIStackView(arrangedSubviews:subViews)
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 8
        stackView.tintColor = UIColor.blue
        return stackView
    }()
    
    lazy private var btnLogin : UIButton = {
        var button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.red
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 160).isActive = true
        button.addTarget(self,
                         action: #selector(LoginViewController.loginButtonAction(sender:)),
                         for: .touchUpInside)
        return button
    }()
    
    lazy private var loginViewModel : LoginViewModel = {
        return EmailLoginViewModel()
    }()
    
    private func newTextField() -> UITextField {
        let textfield = UITextField()
        textfield.borderStyle = .bezel
        textfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: 160).isActive = true        
        return textfield;
    }
    
    @objc private func loginButtonAction(sender:UIButton) {
        self.loginViewModel.login( userName: self.txtfUserName.text ?? "",
                                   password: self.txtPassword.text ?? "") { (result) in
            switch result {
            case .success(let data): print("\(data)")
            case .failure: break
            }
        }
    }
    
    private func showError(_ error:Error) {
        print("\(error)")
    }
    
    public override func loadView() {
        self.view = self.stackView
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        if( textField === self.txtPassword ){
            if let username = textField.text {
                if let error = self.loginViewModel.isUserNameValid(username) {
                    showError(error)
                }
            }
        }
    }
}


