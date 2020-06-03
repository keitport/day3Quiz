//
//  SecondViewController.swift
//  QuizApp
//
//  Created by 鈴木 啓太 on 2020/05/30.
//  Copyright © 2020年 鈴木 啓太. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var FirstResultImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tappedFirstChoiceButton(_ sender: Any) {
        showFalse()
    }
    
    
    @IBAction func tappedSecondChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    
    @IBAction func tappedThirdChoiceButton(_ sender: Any) {
        self.showFalse()
    }
    
    
    @IBAction func tappedFourthChoiceButton(_ sender: Any) {
        ScoreCountManager.sharedInstance.addScore()
        self.showTrue()
    }
    
    func showTrue(){
        self.FirstResultImageView.image = UIImage(named: "circle")
        self.moveToSecondQuestion()
    }
    
    func showFalse(){
        self.FirstResultImageView.image = UIImage(named: "x")
        self.moveToSecondQuestion()
    }
    
    func moveToSecondQuestion(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            let vc = SecondQuestionViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true,completion: nil)
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
