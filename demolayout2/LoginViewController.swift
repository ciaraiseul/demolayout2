import UIKit

class LoginViewController: UIViewController {
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
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "TLM"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome back"
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.textColor = UIColor.systemOrange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login to your account"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor.systemOrange
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    let signUpLabel: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Don't have an account? ", attributes: [.foregroundColor: UIColor.lightGray])
        attributedText.append(NSAttributedString(string: "Sign Up", attributes: [.foregroundColor: UIColor.systemOrange]))
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
        view.addSubview(logoImageView)
        whiteContainerView.addSubview(welcomeLabel)
        whiteContainerView.addSubview(loginLabel)
        whiteContainerView.addSubview(emailTextField)
        whiteContainerView.addSubview(passwordTextField)
        whiteContainerView.addSubview(loginButton)
        whiteContainerView.addSubview(signUpLabel)
        
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
        
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: whiteContainerView.centerXAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        welcomeLabel.topAnchor.constraint(equalTo: whiteContainerView.topAnchor, constant: 100).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: whiteContainerView.centerXAnchor).isActive = true
        
        loginLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 8).isActive = true
        loginLabel.centerXAnchor.constraint(equalTo: whiteContainerView.centerXAnchor).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 60).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: whiteContainerView.leadingAnchor, constant: 30).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: whiteContainerView.trailingAnchor, constant: -30).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 200).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor).isActive = true
        
        signUpLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20).isActive = true
        signUpLabel.centerXAnchor.constraint(equalTo: whiteContainerView.centerXAnchor).isActive = true
    }
    
    @objc func handleBackButton(){
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
    }
}
