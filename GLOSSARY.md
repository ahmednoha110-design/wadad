# Wadad Boutique

The online shop for WADAD BOUTIQUE (وَدَد), a modest-fashion brand selling across Egypt. Customers browse Products and place Orders; the Admin runs the shop.

## People

**Customer**:
A person who places an Order on the site. A Customer has no account and orders as a guest.
_Avoid_: User, client, buyer, account

**Admin**:
A person who signs in to run the shop: manages Products, reviews Orders and Messages. Every Admin has the same full access.
_Avoid_: User, staff, owner, moderator

## Catalogue

**Product**:
An item the shop sells, such as Luna Set or Niqab Collection.
_Avoid_: Item, piece, listing

**Option**:
One specific choice within a Product that a Customer must pick, such as blue, or size 25. Each Option can be Available or not on its own.
_Avoid_: Variant, variation, SKU

**Available**:
Whether a Product or an Option can currently be ordered. It is an on/off state, not a stock count.
_Avoid_: In stock, quantity, inventory

## Ordering

**Cart**:
The Products and Options a Customer has picked but not yet ordered. A Cart becomes an Order only when the Customer places it.
_Avoid_: Basket, bag

**Order**:
A Customer's request to buy one or more Products, placed through the site. Payment happens outside the site, by the Payment Method chosen in the Order. A request made over WhatsApp or Instagram is not an Order.
_Avoid_: Purchase, sale, transaction, checkout

**Order Number**:
The short public reference for an Order, such as W-1024, that the Customer quotes on WhatsApp or Instagram.
_Avoid_: Order ID, reference, code

**Order Line**:
One Product in an Order, with its chosen Options, quantity, and the unit price at the moment the Order was placed.
_Avoid_: Item, cart item, row

**Order Total**:
The sum of an Order's Order Lines. It never includes shipping, which the Admin confirms with the Customer.
_Avoid_: Grand total, amount due

**Order Status**:
Where an Order stands: New, Confirmed, Shipped, Delivered, or Cancelled. Only an Admin changes it.
_Avoid_: State, stage, progress

**Payment Method**:
How the Customer will pay for an Order: cash on delivery, InstaPay, or mobile wallet.
_Avoid_: Payment, gateway

## Contact

**Message**:
A note a person sends through the contact form, with name, phone and text. A Message is not an Order. An Admin can mark it as handled.
_Avoid_: Contact, inquiry, ticket, lead
