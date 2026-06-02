#import "../../../template.typ": project

#project("FoodWeOrder", url: "https://github.com/faketut/FoodWeOrder")
- Idempotent WeChat Pay callbacks with verified signatures; slow I/O offloaded to a worker queue to keep the web tier non-blocking at peak load.
- Eliminated inventory oversell by wrapping stock checks and order inserts in row-locked DB transactions with atomic decrements.
- Vendor dashboard (daily sales, SKU velocity, repeat rate) fed straight off the transactional schema — no manual tallies.
