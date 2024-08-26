import UIKit

class SignUpViewController: UIViewController {
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleBackButton), for: .touchUpInside)
        return button
    }()
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "anhbautroi"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let whiteContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Register"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Create a new account"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fullnameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Fullname"
        textField.layer.cornerRadius = 25
        textField.backgroundColor = UIColor(white: 0.95, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Your mail"
        textField.layer.cornerRadius = 25
        textField.backgroundColor = UIColor(white: 0.95, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 25
        textField.backgroundColor = UIColor(white: 0.95, alpha: 1)
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    let confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Confirm Password"
        textField.layer.cornerRadius = 25
        textField.backgroundColor = UIColor(white: 0.95, alpha: 1)
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    let termsLabel: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "By Creating an account, you agree to our\n", attributes: [.foregroundColor: UIColor.lightGray])
        attributedText.append(NSAttributedString(string: "Terms & Conditions", attributes: [.foregroundColor: UIColor.systemOrange]))
        attributedText.append(NSAttributedString(string: " and agree to ", attributes: [.foregroundColor: UIColor.lightGray]))
        attributedText.append(NSAttributedString(string: "Privacy Policy", attributes: [.foregroundColor: UIColor.systemOrange]))
        label.attributedText = attributedText
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 2
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign Up", for: .normal)
        button.backgroundColor = UIColor.systemOrange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    let alreadyAccountLabel: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Already have an account? ", attributes: [.foregroundColor: UIColor.lightGray])
        attributedText.append(NSAttributedString(string: "Log In", attributes: [.foregroundColor: UIColor.systemOrange]))
        label.attributedText = attributedText
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        view.addSubview(backButton)
        view.addSubview(whiteContainerView)
        view.addSubview(registerLabel)
        view.addSubview(descriptionLabel)
        whiteContainerView.addSubview(fullnameTextField)
        whiteContainerView.addSubview(emailTextField)
        whiteContainerView.addSubview(passwordTextField)
        whiteContainerView.addSubview(confirmPasswordTextField)
        whiteContainerView.addSubview(termsLabel)
        whiteContainerView.addSubview(loginButton)
        whiteContainerView.addSubview(alreadyAccountLabel)
        
        setupLayout()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 0, y: 100))
        path.addQuadCurve(to: CGPoint(x: 100, y: 0),
                          controlPoint: CGPoint(x: 0, y: 0))
                          
        path.addLine(to: CGPoint(x: whiteContainerView.bounds.width, y: 0))
        path.addLine(to: CGPoint(x: whiteContainerView.bounds.width, y: whiteContainerView.bounds.height))
        path.addLine(to: CGPoint(x: 0, y: whiteContainerView.bounds.height))
        
        path.close()
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        whiteContainerView.layer.mask = mask
    }
    
    func setupLayout() {
        backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        whiteContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        whiteContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        whiteContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        whiteContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75).isActive = true
        
        registerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 5).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: registerLabel.centerXAnchor).isActive = true
        
        fullnameTextField.topAnchor.constraint(equalTo: whiteContainerView.topAnchor, constant: 100).isActive = true
        fullnameTextField.leadingAnchor.constraint(equalTo: whiteContainerView.leadingAnchor, constant: 30).isActive = true
        fullnameTextField.trailingAnchor.constraint(equalTo: whiteContainerView.trailingAnchor, constant: -30).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: fullnameTextField.bottomAnchor, constant: 20).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: fullnameTextField.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: fullnameTextField.trailingAnchor).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor).isActive = true
        
        confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        confirmPasswordTextField.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
        confirmPasswordTextField.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
        
        termsLabel.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 20).isActive = true
        termsLabel.leadingAnchor.constraint(equalTo: whiteContainerView.leadingAnchor, constant: 20).isActive = true
        termsLabel.trailingAnchor.constraint(equalTo: whiteContainerView.trailingAnchor, constant: -20).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: termsLabel.bottomAnchor, constant: 60).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: whiteContainerView.leadingAnchor, constant: 30).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: whiteContainerView.trailingAnchor, constant: -30).isActive = true

        alreadyAccountLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        alreadyAccountLabel.centerXAnchor.constraint(equalTo: whiteContainerView.centerXAnchor).isActive = true
    }
    
    @objc func handleBackButton(){
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
    }
}
