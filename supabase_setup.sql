-- ══════════════════════════════════════════════
-- 해피콜 스크립트 - Supabase 초기 설정 SQL
-- 실행 방법: Supabase 대시보드 > SQL Editor > New query
--           아래 전체를 붙여넣고 Run 클릭 (한 번만)
-- ══════════════════════════════════════════════

-- 스크립트 테이블 (구글시트의 9개 열과 동일한 구성)
create table if not exists public.scripts (
  id          text primary key,          -- ID (예: kt001)
  carrier     text not null,             -- 통신사 (예: KT, LG, PARTNER)
  section     text not null,             -- 섹션
  subsection  text,                      -- 서브섹션
  owner_types text not null default 'all', -- 명의자유형 ('all' 또는 쉼표 구분)
  sort_order  integer not null default 1,  -- 순서
  cctv_type   text,                      -- CCTV유형
  script      text not null default '',  -- 스크립트 본문
  note        text                       -- 비고
);

-- 익명(anon) 키로 읽기/쓰기 허용
-- 웹앱이 로그인 없이 동작하는 구조라 anon 키에 전체 권한을 줍니다.
alter table public.scripts enable row level security;

drop policy if exists "anon select" on public.scripts;
drop policy if exists "anon insert" on public.scripts;
drop policy if exists "anon update" on public.scripts;
drop policy if exists "anon delete" on public.scripts;

create policy "anon select" on public.scripts for select to anon using (true);
create policy "anon insert" on public.scripts for insert to anon with check (true);
create policy "anon update" on public.scripts for update to anon using (true) with check (true);
create policy "anon delete" on public.scripts for delete to anon using (true);
