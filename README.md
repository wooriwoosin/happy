# 해피콜 스크립트 (Happy Call Script)

해피콜 스크립트 웹앱입니다.

- **화면(HTML)**: 이 저장소의 `index.html` → GitHub Pages(`https://wooriwoosin.github.io/happy`)에서 서빙
- **데이터**: 구글 시트의 `스크립트` 탭에 저장, Apps Script(`Code.gs`)가 데이터 API 역할

```
[GitHub Pages: index.html] ←fetch(JSON)→ [Apps Script: Code.gs] ←→ [구글 시트: 스크립트 탭]
```

## 파일 구성

| 파일 | 설명 |
|------|------|
| `Code.gs` | Apps Script 데이터 API (doGet: 불러오기 / doPost: 저장) |
| `index.html` | 웹앱 UI (HTML/CSS/JS 단일 파일) — GitHub Pages에서 서빙 |

## 최초 설정 (한 번만)

1. 구글 시트 > 확장 프로그램 > Apps Script 열기
2. `Code.gs` 내용을 이 저장소의 `Code.gs`로 교체 (기존 `Index` HTML 파일은 삭제해도 됨)
3. 배포 > 새 배포 > 웹앱 > 실행계정: **나** / 액세스: **모든 사용자** → 웹앱 URL 복사
4. 이 저장소 `index.html` 상단의 `SHEET_API_URL = ''` 에 복사한 URL 붙여넣기

## 수정 반영 방법

- **HTML(화면/스크립트 내용) 수정**: 이 저장소에서 `index.html` 수정 → GitHub Pages에 자동 반영 (1~2분)
- **시트에서 데이터 수정**: 구글 시트 `스크립트` 탭에서 직접 수정 → 페이지 새로고침하면 반영
- **Code.gs 수정**: Apps Script에 붙여넣고 배포 관리 > **버전 업데이트** (새 배포를 만들면 URL이 바뀌므로 주의)

## 데이터

- 스크립트 데이터는 구글 시트의 `스크립트` 시트에 저장됩니다.
- 열 구성: ID, 통신사, 섹션, 서브섹션, 명의자유형, 순서, CCTV유형, 스크립트, 비고
- 웹앱 수정모드에서 편집하면 시트에 자동 저장되고, 시트에서 고치면 새로고침 시 웹앱에 반영됩니다.
