//
//  RootViewModel.swift
//  BasicSwift
//
//  Created by 배정길 on 10/30/24.
//

import Foundation

class RootViewModel {
    // 공부할 주제 리스트
    private(set) var studyTopics: [StudyTopic] = [
        StudyTopic(title: "RxSwift Study", description: "RxSwift 스터디 화면"),
        StudyTopic(title: "Combine Study", description: "Combine 스터디 화면"),
        StudyTopic(title: "closer Study", description: "클로저 스터디 화면")
    ]
    
    // 선택된 주제를 처리하는 메서드
    func selectTopic(at index: Int) -> StudyTopic? {
        guard index >= 0 && index < studyTopics.count else { return nil }
        return studyTopics[index]
    }
}
