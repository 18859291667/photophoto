//
//  SHLogin.swift
//  SHPhotoPhoto
//
//  Created by shark on 2021/3/24.
//

import UIKit

class SHLoginVC: UIViewController {
    
    /// 标题
    lazy var titleLabel: UILabel = {
        let label = UILabel.init()
        label.text = "欢迎使用图图"
        label.font = SHFontBodySize(size: 24)
        label.textColor = UIColor.black
        label.textAlignment = .center
        return label
    }()
    
    /// 输入view
    lazy var phoneView: UIView = {
        let view = UIView.init(frame: CGRect.init(x: 32, y: 200, width: SHScreenWidth - 64, height: 48))
        let line = UIView.init(frame: CGRect.init(x: 0, y: 47, width: SHScreenWidth - 64, height: 1))
        line.backgroundColor = SHColor(value: 0xE5E5E5)
        let imageView = UIImageView.init(frame: CGRect.init())
        imageView.image = UIImage.init(named: "add_driver_ic_phonebook")
        imageView.frame = CGRect.init(x: 0, y: 0, width: 40, height: 48)
        view.addSubview(line)
        view.addSubview(imageView)
        return view
    }()
      
    /// 输入框
    lazy var phoneTextField: UITextField = {
        let textField = UITextField.init()
        textField.placeholder = "请输入电话号码"
        textField.clearButtonMode = .whileEditing
        return textField
    }()
    
    /// 输入view
    lazy var secretView: UIView = {
        let view = UIView.init()
        let line = UIView.init(frame: CGRect.init(x: 0, y: 47, width: SHScreenWidth - 64, height: 1))
        line.backgroundColor = SHColor(value: 0xE5E5E5)
        let imageView = UIImageView.init(frame: CGRect.init())
        imageView.image = UIImage.init(named: "add_driver_ic_phonebook")
        imageView.frame = CGRect.init(x: 0, y: 0, width: 40, height: 48)
        view.addSubview(line)
        view.addSubview(imageView)
        return view
    }()
    
    /// 密码输入框
    lazy var secretTextField: UITextField = {
        let textField = UITextField.init()
        textField.placeholder = "请输入密码"
        textField.clearButtonMode = .whileEditing
        textField.isSecureTextEntry = true
        return textField
    }()
    
    /// 登陆按钮
    lazy var loginButton: UIButton = {
        let button = UIButton.init()
        button.setTitle("登陆", for: .normal)
        button.addTarget(self, action: #selector(clickLogin), for: .touchUpInside)
        button.titleLabel?.font = SHFontRegularSize(size: 18)
        button.backgroundColor = SHColor(value: 0xff6600)
        button.layer.cornerRadius = 8.0;
//        button.isEnabled = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        /// 加载UI
        layoutUI()
        /// 添加frame约束
        layoutFrame()
    }
    
    /// 加载UI
    func layoutUI() {
        view.addSubview(self.titleLabel)
        view.addSubview(self.phoneView)
        phoneView.addSubview(self.phoneTextField)
        view.addSubview(self.secretView)
        secretView.addSubview(self.secretTextField)
        view.addSubview(self.loginButton)
    }
    
    /// 添加frame约束
    func layoutFrame() {
        titleLabel.frame = CGRect.init(x: 0, y: 120, width: SHScreenWidth, height: 30)
        phoneView.frame = CGRect.init(x: 32, y: 200, width: SHScreenWidth - 64, height: 48)
        phoneTextField.frame = CGRect.init(x: 30, y: 0, width: SHScreenWidth - 94, height: 48)
        secretView.frame = CGRect.init(x: 32, y: phoneView.frame.maxY + 20, width: 150, height: 48)
        secretTextField.frame = CGRect.init(x: 30, y: 0, width: SHScreenWidth - 94, height: 48)
        loginButton.frame = CGRect.init(x: 32, y: secretView.frame.maxY + 60, width: SHScreenWidth - 64, height: 48)
    }
    
    /// 登陆按钮事件
    @objc func clickLogin() {
        
        let naVC = UINavigationController.init(rootViewController: SHHomeVC.init())
        self.present(naVC, animated: true, completion: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
