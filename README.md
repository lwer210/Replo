# Replo

📋 반복되는 흐름을 잡아주는 할 일 관리 앱

## 📱 소개

**Replo**는 단순한 할 일 관리 앱 <br>
할 일을 추가하고, 완료 여부를 체크하고 반복되는 루틴을 기록하고 정리하며 꾸준함을 유지시킴

## 🛠 주요 기능

- [x] 할 일 추가 / 삭제
- [x] 완료 여부 토글
- [x] MVVM 아키텍처 적용
- [x] SwiftUI 기반 UI 구성
- [ ] 사용자 로그인
- [ ] 사용자 별 할 일 관리

## 📸 시연

![Replo 데모](./assets/Replo_demo_v1.gif)

## 🔧 기술 스택

- **SwiftUI**
- **MVVM 패턴**

## 📁 프로젝트 구조

```
Replo
├── App
│   ├── ContentView.swift
│   ├── HomeView.swift
│   └── ReploApp.swift
├── Model
│   └── TasksModel.swift
├── Utils
│   └── DateFormatterManage.swift
├── View
│   ├── Profile
│   │   └── ProfileView.swift
│   └── Tasks
│       ├── TaskListView.swift
│       └── TasksView.swift
└── ViewModel
    └── TaskViewModel.swift
```

- `App 디렉토리`: 앱 진입점 및 주요 뷰 진입 관리
- `Model 디렉토리`: 데이터 구조 및 모델 정의
- `View 디렉토리`: 사용자 인터페이스 화면 컴포넌트
- `ViewModel 디렉토리`: 뷰와 모델 사이의 비즈니스 로직 및 상태 관리
- `Utils 디렉토리`: 앱 전반에 걸쳐 재사용 가능한 공통 유틸리티
