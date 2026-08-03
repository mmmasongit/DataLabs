/*
You saw how to use COUNT() in the video. Do you remember what it returns?

Here is a query counting film_id. Select the answer below that correctly
describes what the query will return.

```sql
SELECT COUNT(film_id) AS count_film_id
FROM reviews;
```

Run the query in the console to test your theory!
 */
SELECT
  COUNT(film_id) AS count_film_id
FROM
  intermediate_sql.reviews;