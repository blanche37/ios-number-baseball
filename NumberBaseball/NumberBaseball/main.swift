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
//--------------------------------------------
//숫자를 입력받아 어레이를 구성
func inputnumber() {
    while inputUserNum.count < 3 {
        inputUserNum.append(contentsOf: readLine()!.split(separator: " ").map { Int($0)! })
        print("임의의 수\(inputUserNum)")
    }
}
//readLine()!.split(separator: " ").map { Int($0)! }
//----------------------------
//게임을 시작
func startGame() {
    randomNumber()   //랜덤된숫자 3개를 뽑음 (고정)
    while chance >= 0 {
        inputnumber()
        //랜덤된 숫자 3개를 제출
        //intArr랑 inputUserNum이랑 비교
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
     //중복을 비교하여 볼과 스트라이크를 반환하는함수
 
//Int(readLine()!)!
//randomNumber() : 중복되지 않는 세 개의 정수를 포함하는 Array를 반화하는 함수

//startGame() : 게임을 시작하며 comNums배열에 randomNumber의 결과를 저장 후 매판 결과를 출력
func result() {
    
}
//result(): 매판 실행되며 userNums를 갱신하며 comNums를 비교하여 판당 결과를 출력하는 함수
/*다음 전역변수를 생성합니다
임의의 정수 3개를 담아둘 변수
남은 시도횟수를 담아둘 변수
초기값은 9입니다
다음 함수를 구현합니다
1~9 사이의 세 개의 임의의 정수를 생성하여 반환하는 함수
생성한 세 개의 정수는 중복된 수가 없어야합니다
세 개의 정수를 전달받아 [1-a]의 수와 비교하여 볼과 스트라이크 결과를 반환하는 함수
게임시작 함수
이번 스텝에서는 사용자 입력없이 임의의 수를 생성하여 게임을 진행하도록 구현합니다


힌트
Int.random(x...y) 를 사용하면 x~y의 임의의 정수를 만들 수 있습니다*/
