# Study

## 회고록

### 2024년 10월 30일(수요일)

**오늘의 목표**
- 프로젝트 초기 설정: MVVM 형태로 폴더 설정
- RootViewCtrl 에 UITableView로 공부 주제 리스트 표시 기능 추가
- RootViewModel 에 공부 주제 데이터를 관리하는 기본 코드 추가
- RxSwift 라이브러리 SPM 으로 추가

**학습한 내용**
- MVVM 각각의 Model, View, ViewModel 간의 역할 학습
- RxSwift 라이브러리를 SPM 으로 추가 할수 있다.
- MVVM 구조는 앞으로
BasicSwift
├── AppDelegate.swift
├── SceneDelegate.swift
├── Assets
├── Info.plist
├── LaunchScreen.storyboard
├── Main.storyboard
├── Models
│   └── Item.swift
├── ViewModels
│   └── ViewModel.swift
├── Views
│   ├── RootViewCtrl.swift
│   └── Cells
│       └── ItemCell.swift (필요한 경우, 커스텀 셀 클래스)
└── Extensions (옵션)
    └── UITableView+Rx.swift (Rx에 관련된 커스텀 확장이 필요한 경우)
    방식으로 설계해나갈 예정이다.

**느낀 점**
- RxSwift 라이브러리를 SPM 으로 추가하는 과정이 오래 걸렸다. git 설정이 특정 패키지 설정과 충돌해서 발생한 문제였다.
  git config --global --unset-all safe.bareRepository 로 글로벌 git 설정 초기화로 해결 했다. 

**개선점 및 계획**
- 셋팅에 너무 많은 시간을 쓴다. 

---
