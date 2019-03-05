//
//  ViewController.swift
//  VVNavigationController
//
//  Created by qiuncheng on 03/05/2019.
//  Copyright (c) 2019 qiuncheng. All rights reserved.
//

import UIKit
import VVNavigationController

class ViewController: UIViewController {
        
    @IBAction func buttonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canBeginPopGesture = true
        let count = self.navigationController?.viewControllers.count ?? 0
        title = "vc" + "\(count)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

