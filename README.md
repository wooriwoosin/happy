# 해피콜 스크립트 (Happy Call Script)

해피콜 스크립트 웹앱입니다.

- **화면(HTML)**: 이 저장소의 `index.html` → GitHub Pages(`https://wooriwoosin.github.io/happy`)에서 서빙
- **데이터**: Supabase(수파베이스) `scripts` 테이블에 저장

```
[GitHub Pages: index.html] ←fetch(REST)→ [Supabase: scripts 테이블]
```

## 파일 구성

| 파일 | 설명 |
|------|------|
| `index.html` | 웹앱 UI (HTML/CSS/JS 단일 파일) — GitHub Pages에서 서빙 |
| `supabase_setup.sql` | Supabase 테이블 생성 SQL (최초 1회 실행) |
| `Code.gs` | (구) 구글시트 Apps Script API — 데이터 이전 완료 후에는 불필요 |

## 최초 설정 (한 번만)

1. [supabase.com](https://supabase.com) 가입 → **New project** 생성
   (Region은 Northeast Asia (Seoul) 권장)
2. 좌측 메뉴 **SQL Editor** > New query → `supabase_setup.sql` 내용 붙여넣고 **Run**
3. 좌측 메뉴 **Project Settings > API** 에서 두 값 복사:
   - **Project URL** (예: `https://xxxx.supabase.co`)
   - **anon public** 키
4. `index.html` 상단의 `SUPABASE_URL`, `SUPABASE_ANON_KEY` 에 붙여넣기

## 데이터 자동 이전

Supabase 테이블이 비어있는 상태로 페이지에 접속하면, 기존 구글시트
(`LEGACY_SHEET_API_URL`)에서 전체 데이터를 읽어와 자동으로 Supabase에
넣습니다. 상단에 "✅ 이전 완료: NNN개"가 표시되면 끝난 것이며,
이후에는 Supabase가 유일한 저장소가 됩니다.

## 수정 반영 방법

- **화면/기능 수정**: 이 저장소에서 `index.html` 수정 → GitHub Pages에 자동 반영 (1~2분)
- **스크립트 내용 수정**: 웹앱 수정모드에서 편집 → Supabase에 자동 저장
- **데이터 직접 보기/수정**: Supabase 대시보드 > Table Editor > `scripts`

## 테이블 구조 (`scripts`)

| 열 | 설명 |
|----|------|
| `id` | 고유 ID (예: kt001, partner001) |
| `carrier` | 통신사/카테고리 (KT, LG, SK, PARTNER 등) |
| `section` | 섹션 |
| `subsection` | 서브섹션 |
| `owner_types` | 명의자유형 (`all` 또는 쉼표 구분) |
| `sort_order` | 정렬 순서 |
| `cctv_type` | CCTV 유형 |
| `script` | 스크립트 본문 |
| `note` | 비고 |
