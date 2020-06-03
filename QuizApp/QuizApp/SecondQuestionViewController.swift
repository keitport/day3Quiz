//
//  SecondQuestionViewController.swift
//  QuizApp
//
//  Created by 鈴木 啓太 on 2020/05/30.
//  Copyright © 2020年 鈴木 啓太. All rights reserved.
//

import UIKit

class SecondQuestionViewController: UIViewController {

    @IBOutlet weak var SecondResultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func tappedFirstChoiceButton(_ sender: Any) {
        ScoreCountManager.sharedInstance.addScore()
        self.showTrue()
    }
    
    @IBAction func tappedSecondChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    @IBAction func tappedThirdChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    @IBAction func tappedFourthChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    
    @IBAction func tappedFifthChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    func showTrue(){
        self.SecondResultImage.image = UIImage(named: "circle")
        self.moveToThirdQuestion()
    }
    
    func showFalse(){
        self.SecondResultImage.image = UIImage(named: "x")
        self.moveToThirdQuestion()
    }
    
    func moveToThirdQuestion(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
         let vc = ThirdQuestionViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        }
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
