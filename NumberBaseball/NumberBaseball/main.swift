//
//  NumberBaseball - main.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation
var randomNum = Set<Int>()
var num = Int.random(in: 1...9)
var intArr = [Int]()
var chance = 9
var sCnt = 0
var bCnt = 0
var inputUserNum = [Int]()

func randomNumber() {
    while randomNum.count < 3 {
        let num = Int.random(in: 1...9)
        randomNum.insert(num)
        }
    intArr = Array<Int>(randomNum)
}

func inputnumber() {
    while inputUserNum.count < 3 {
        inputUserNum.append(contentsOf: readLine()!.split(separator: " ").map { Int($0)! })
        print("임의의 수\(inputUserNum)")
    }
}
func startGame() {
    randomNumber()
    while chance >= 0 {
        inputnumber()
        
        for i in 0...2 {
            if intArr[i] == inputUserNum[i] {
                sCnt += 1
            } else if intArr.contains(inputUserNum[i]) {
                bCnt += 1
            }
        }
        print("스트라이크: \(sCnt), 볼: \(bCnt)")
        sCnt = 0
        bCnt = 0
        chance -= 1
        print("남은 기회: \(chance)")
        inputUserNum = []
        if sCnt == 3 {
            print("사용자 승리")
            break
        } else if chance == 0 {
            print("컴퓨터 승리")
        }
       
    }
}
startGame()
   
