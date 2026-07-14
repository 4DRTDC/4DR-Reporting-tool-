# 4 Diamond Ranch — Operations Ledger

A local dashboard that turns your daily Shopify + Meta exports into Total Revenue, Orders,
Pounds, AOV, Price/lb, New/Repeat Customers, Top Performing Ad, and CAC — broken out
Daily (yesterday), Week-to-date, and Month-to-date.

## Running it

Double-click `index.html` to open it in your browser. That's it — no install, no server.
Everything runs locally; nothing is uploaded anywhere. Your data lives in this browser's
local storage until you clear it.

**Keep this folder somewhere you won't move it around, and use the same browser each day** —
local storage is tied to both. Use the **Backup data** button periodically (weekly is plenty)
to save a snapshot you can restore from if you switch computers or clear your browser data.

## Daily routine

Export these and drop them all onto the dashboard at once — it figures out what's what:

| Source | Where to get it | Export range |
|---|---|---|
| **Total sales over time** | Shopify Admin → Analytics → Reports → *Total sales over time* | Cumulative — Jan 1 to today, every time |
| **New vs. returning customers** | Shopify Admin → Analytics → Reports → *First-time vs returning customer sales* | Cumulative — Jan 1 to today, every time |
| **Products** | Shopify Admin → Products → Export → *All products* | Only needed when your catalog or weights change |
| **Orders** | Shopify Admin → Orders → Export | Trailing 7 days |
| **Meta Ads** | Ads Manager → set Breakdown → By Time → Day, and Delivery level → Ad | Cumulative — Jan 1 to today, every time |

You don't need to sort them into the right slots — just drag all the CSVs you exported that
day onto the drop zone (or click it to browse). It reads each file's columns to figure out
which report it is.

## What "Daily / WTD / MTD" mean here

- **Daily** = yesterday (the most recent fully complete day — today is still partial, so it's
  left out everywhere for consistency).
- **WTD** = from the start of the week (configurable Sun/Mon in the settings bar) through
  yesterday.
- **MTD** = from the 1st of the month through yesterday.

## Notes on the numbers

Full methodology is in the collapsible "Methodology & data notes" panel at the bottom of the
dashboard itself — worth a read once. Short version:

- Revenue/Orders/AOV come from the Total Sales report; $0 comped/gifting orders (identified
  via the Orders export) are excluded entirely — from Orders, AOV, Pounds shipped, and Top
  Selling Product.
- Pounds, New/Repeat Customer counts, and CAC are built from your accumulated Orders exports
  (merged locally day over day, deduped by order number) joined against the Products catalog.
  These get more accurate the longer you've been using the dashboard, since they only know
  about orders from the point you started uploading forward. A small ✦ marks numbers where
  the date range reaches further back than your accumulated order history.
- Top Performing Ad is ranked by Results (orders/conversions), not spend or ROAS. If nothing
  converted in the period, it falls back to CTR, then Impressions, then lowest spend — add a
  **Link Clicks** column to your Meta export (alongside Impressions) so CTR can be computed;
  without it, the fallback skips straight to Impressions.

## Starting over

The **Reset all data** button clears everything stored in this browser. Back up first if you
want to keep a copy.
