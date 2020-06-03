//
//  ScoreCountManager.swift
//  QuizApp
//
//  Created by 鈴木 啓太 on 2020/06/02.
//  Copyright © 2020年 鈴木 啓太. All rights reserved.
//

import Foundation

class ScoreCountManager{
    static let sharedInstance = ScoreCountManager()
    
    var totalScore:Int = 0
    
    let score:Int = 10
    
    private init(){
        
}
    func addScore(){
        self.totalScore += score
    }
    
}
