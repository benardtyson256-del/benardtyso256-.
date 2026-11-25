-- Backend schema starter. Review and test Row Level Security before production.
create table if not exists public.bookings (
  id uuid primary key default gen_random_uuid(),
  customer_name text not null,
  phone text not null,
  pickup_area text not null,
  destination text not null,
  service_type text not null,
  status text not null default 'pending',
  created_at timestamptz not null default now()
);
create table if not exists public.drivers (
  id uuid primary key default gen_random_uuid(),
  full_name text not null,
  phone text not null,
  licence_class text not null,
  work_area text not null,
  verified boolean not null default false,
  approved boolean not null default false,
  created_at timestamptz not null default now()
);
alter table public.bookings enable row level security;
alter table public.drivers enable row level security;
-- No public policies are added here. Add carefully scoped policies only after
-- deciding the exact public submission and admin-authentication design.
