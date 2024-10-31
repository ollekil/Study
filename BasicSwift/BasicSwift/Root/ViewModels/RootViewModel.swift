//
//  RootViewModel.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import UIKit

class RootViewModel {
    // 공부할 주제 리스트
    private(set) var studyTopics: [StudyTopic] = [
        StudyTopic(title: "RxSwift Study", description: "RxSwift 스터디 화면", viewControllerType: SwiftStudyViewCtrl.self),
        StudyTopic(title: "Combine Study", description: "Combine 스터디 화면", viewControllerType: SwiftStudyViewCtrl.self),
        StudyTopic(title: "Swift Study", description: "스위프트 스터디 화면", viewControllerType: SwiftStudyViewCtrl.self)
    ]
    
    
    
    // 선택된 주제에 대한 이벤트 클로저
    var onTopicSelected: ((UIViewController) -> Void)?
    
    // 선택된 주제의 ViewController를 생성하는 메서드
    func selectTopic(at index: Int) {
        guard index >= 0 && index < studyTopics.count else { return }
        let selectedTopic = studyTopics[index]
        
        // 선택된 주제의 ViewController를 생성하여 클로저를 통해 전달
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: selectedTopic.viewControllerType))
        onTopicSelected?(viewController)
    }
}
