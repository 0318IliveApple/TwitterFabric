//
//  LoginViewContoller.swift
//  TwitterFabric
//
//  Created by 中嶋裕也 on 2015/09/13.
//  Copyright (c) 2015年 中嶋裕也. All rights reserved.
//

import Foundation

import Fabric
import UIKit
import TwitterKit

class LoginViewController: UIViewController {

    super.viewDidLoad()
    let loginButton = TWTRLogInButton(logInCompletion: {
        session, error in
        if session != nil {
            print(session!.userName)
            // ログイン成功したら遷移する
            let timelineVC = TimelineViewController()
            UIApplication.sharedApplication().keyWindow?.rootViewController = timelineVC
        } else {
            print(error!.localizedDescription)
        }
    })
    loginButton.center = self.view.center
    self.view.addSubview(loginButton)
}


