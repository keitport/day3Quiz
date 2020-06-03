//
//  ViewController.swift
//  QuizApp
//
//  Created by 鈴木 啓太 on 2020/05/30.
//  Copyright © 2020年 鈴木 啓太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tappedStartButton(_ sender: Any) {
        let vc = SecondViewController ()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }

}

