# Render Static Site with Supabase as the backend, no framework

The shop stays plain HTML/CSS/JS files with no build step, served as a free Render Static Site; all server-side behaviour (Admin sign-in, the database and its access rules, the new-Order email) lives in Supabase. We chose this over a framework (e.g. Next.js) or a Render web service because the free Render web service sleeps after 15 minutes idle, cannot send SMTP mail, and free Render Postgres is deleted after 30 days, while the owner-run shop needs nothing a server process would add.

## Consequences

- Business rules that must not be trusted to the browser (prices and availability when an Order is placed) run inside Supabase, not in page scripts.
- Email goes through an HTTP email API called from Supabase, not SMTP.
