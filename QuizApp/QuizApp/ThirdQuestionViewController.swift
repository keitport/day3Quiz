//
//  ThirdQuestionViewController.swift
//  QuizApp
//
//  Created by 鈴木 啓太 on 2020/05/30.
//  Copyright © 2020年 鈴木 啓太. All rights reserved.
//

import UIKit

class ThirdQuestionViewController: UIViewController {
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var thirdResultImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tappedAnswerButton(_ sender: Any) {
        if self.answerTextField.text == "アルゼンチン"{
            ScoreCountManager.sharedInstance.addScore()
            self.showTrue()
        }else{
            self.showFalse()
        }
    }
    
    
    
    func showTrue(){
        self.thirdResultImageView.image = UIImage(named: "circle")
        self.moveToScoreView()
    }
    
    func showFalse(){
        self.thirdResultImageView.image = UIImage(named: "x")
        self.moveToScoreView()
    }
    
    func moveToScoreView(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            let vc = ScoreViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
