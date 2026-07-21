/*
Challenge

Business Situation
1. A customer forgot their wallet at our store! We need to track down their
email to inform them. What is the email for the customer with the name
"Nancy Thomas"?

2. A customer wants to know what the movie "Outlaw Hanky" is about. Could you
give them the description for the movie "Outlaw Hanky"?

3. A customer is late on their movie return, and we've mailed them a letter to
their address at '259 Ipoh Drive'. We should also call them on the phone to let
them know. Can you get the phone number for the customer who lives at
'259 Ipoh Drive'.
 */
--
-- Challenge 1
SELECT
  email
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name = 'Nancy'
  AND last_name = 'Thomas';

--
-- Challenge 2
SELECT
  description
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  title = 'Outlaw Hanky';

--
-- Challenge 3
SELECT
  phone
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.address
WHERE
  address = '259 Ipoh Drive';