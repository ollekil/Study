//
//  SwiftStudyViewModel.swift
//  BasicSwift
//
//  Created by 배정길 on 11/1/24.
//

import UIKit

class SwiftStudyViewModel {
    // 뒤로 가기 이벤트를 처리할 클로저
    var onBackButtonPressed: (() -> Void)?
    
    // 뒤로 가기 이벤트 메서드
    func backButtonPressed() {
        onBackButtonPressed?()
    }
}
