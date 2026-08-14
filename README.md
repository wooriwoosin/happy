# 해피콜 스크립트 (Happy Call Script)

Google Apps Script 기반 해피콜 스크립트 웹앱입니다.
앞으로 `Index.html`(및 `Code.gs`) 수정은 이 저장소에서 관리합니다.

## 파일 구성

| 파일 | 설명 |
|------|------|
| `Code.gs` | Apps Script 서버 코드 (시트 연동, 데이터 저장/불러오기) |
| `index.html` | 웹앱 UI (HTML/CSS/JS 단일 파일) |

## GitHub Pages

GitHub Pages를 켜면 `https://wooriwoosin.github.io/happy` 에서 페이지를 볼 수 있습니다.

- 활성화: 저장소 **Settings > Pages > Deploy from a branch** 에서 브랜치 선택 후 Save
- 참고: GitHub Pages 버전은 브라우저 localStorage에만 저장되며, 구글 시트 동기화는
  Apps Script 웹앱 배포 주소에서만 동작합니다.

## Apps Script 반영 방법

1. 구글 시트 > 확장 프로그램 > Apps Script 열기
2. `Code.gs` 내용 교체 (변경된 경우)
3. `Index` HTML 파일에 이 저장소의 `index.html` 내용 붙여넣기
4. 배포 > 새 배포 (또는 기존 배포 관리 > 버전 업데이트) > 웹앱
   - 실행 계정: 나 / 액세스: 모든 사용자

## 데이터

- 스크립트 데이터는 구글 시트의 `스크립트` 시트에 저장됩니다.
- 열 구성: ID, 통신사, 섹션, 서브섹션, 명의자유형, 순서, CCTV유형, 스크립트, 비고
