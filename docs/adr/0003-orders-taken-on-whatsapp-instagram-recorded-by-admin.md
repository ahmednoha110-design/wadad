---
status: accepted
---

# Orders are taken on WhatsApp and Instagram and recorded by the Admin

Customers keep ordering over WhatsApp and Instagram, as they already do; the site's Cart only prepares a WhatsApp message. The Admin records each agreed Order in the dashboard to track its Order Status. We chose this over Orders placed on the site because the owner wants every sale to go through a conversation with the Customer, so there is no site checkout, no Order email, and no need for an email service. This supersedes ADR 0002.

## Consequences

- Orders are only ever written by a signed-in Admin; nothing public can create an Order.
- The planned new-Order email and its email service are dropped.
