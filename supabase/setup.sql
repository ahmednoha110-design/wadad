-- Wadad contact form: messages table, insert-only for the public (anon) role.
-- Run once in Supabase Dashboard -> SQL Editor.

create table if not exists public.messages (
  id         bigint generated always as identity primary key,
  name       text        not null check (char_length(btrim(name)) between 1 and 100),
  phone      text        not null check (phone ~ '^\+?[0-9]{8,15}$'),
  message    text        not null check (char_length(btrim(message)) between 1 and 2000),
  created_at timestamptz not null default now()
);

-- Row Level Security on: with no select/update/delete policy, those are all denied.
alter table public.messages enable row level security;

-- Table privileges: anon may only insert name/phone/message (created_at is always set by the server).
revoke all on table public.messages from anon, authenticated;
grant insert (name, phone, message) on table public.messages to anon;

-- The one policy: anyone visiting the page may add a message. No read, update or delete.
drop policy if exists "Public can insert messages" on public.messages;
create policy "Public can insert messages"
  on public.messages
  for insert
  to anon
  with check (true);
