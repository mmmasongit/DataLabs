/*
SQL arithmetic comes in handy when your table is missing a metric you want to
review. Suppose you have some data on movie ticket sales, but the table only has
fields for ticket price and discount. In that case, you could combine these by
subtracting the discount from the ticket price to get the amount the film-goer
paid.

You have seen that SQL can act strangely when dividing integers. What is the
result if you divide a discount of two dollars by the paid_price of ten dollars
to get the discount percentage?
 */
SELECT
  2 / 10;