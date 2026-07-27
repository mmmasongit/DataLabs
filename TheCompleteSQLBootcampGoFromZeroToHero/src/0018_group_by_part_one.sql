/*
NOTES

GROUP BY allows us to aggregate columns per some category.

Let's explore this idea with a simple example.

=========================
= Category = Data Value =
=========================
= A        = 10         =
= A        = 5          =
= B        = 2          =
= B        = 4          =
= C        = 12         =
= C        = 6          =
=========================

We need to choose a categorical column to GROUP BY

Categorical columns are non-continuous.

Keep in mind, they can still be numerical, such as cabin class categories on a
ship (e.g. Class 1, Class 2, Class 3)

Let's now see what happens with a GROUP BY call.
=========================
= A        = 10         =
= A        = 5          =
=========================

=========================
= B        = 2          =
= B        = 4          =
=========================

=========================
= C        = 12         =
= C        = 6          =
=========================

So we split this table up by per category basic. So we have everything that
when with category A, category B, category C, and then we have the
corresponding data values. Recall than an aggregate function takes in multiple
values and reduce them back to a single value.

===========================
= Category = Result (SUM) =
===========================
= A        = 15           =
= B        = 6            =
= C        = 18           =
===========================

===========================
= Category = Result (AVG) =
===========================
= A        = 7.5          =
= B        = 3            =
= C        = 9            =
===========================

=============================
= Category = Result (COUNT) =
=============================
= A        = 2              =
= B        = 2              =
= C        = 2              =
=============================

So exploring the general syntax of GROUP BY

```sql
SELECT category_col, AGG(data_col)
FROM table
GROUP BY category_col;
```

The GROUP BY clause must appear right after a FROM or WHERE statement.

```sql
SELECT category_col, AGG(data_col)
FROM table
WHERE category_col != 'A'
GROUP BY category_col;
```

In the SELECT statement, columns must either have an aggregate function or be in
the GROUP BY call.

```sql
SELECT company, division, SUM(sales)
FROM finance_table
GROUP BY company, division;
```

In the SELECT statement, columns must either have an aggregate function or be in
the GROUP BY call.

```sql
SELECT company, division, SUM(sales)
FROM finance_table
WHERE division IN ('marketing', 'transport')
GROUP BY company, division;
```

WHERE statements should not refer to the aggregation result, later on we will
learn to use HAVING to filter on those results.

```sql
SELECT company, SUM(sales)
FROM finance_table
GROUP BY company
ORDER BY SUM(sales);
```

If you want to sort results based on the aggregate, make sure to reference the
entire function.
 */