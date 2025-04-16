
-- Question 1:
-- Show the total payment amount for each payment date.
-- Display the payment date and the total amount paid on that date.
-- Sort the results by payment date in descending order.
-- Show only the top 5 latest payment dates.

SELECT payment_date, SUM(amount) AS total_amount
FROM payments
GROUP BY payment_date
ORDER BY payment_date DESC
LIMIT 5;

-- Question 2:
-- Find the average credit limit of each customer.
-- Display the customer name, country, and the average credit limit.
-- Group the results by customer name and country.

SELECT customer_name, country, AVG(credit_limit) AS avg_credit_limit
FROM customers
GROUP BY customer_name, country;

-- Question 3:
-- Find the total price of products ordered.
-- Display the product code, quantity ordered, and the total price for each product.
-- Group the results by product code and quantity ordered.

SELECT product_code, quantity_ordered, SUM(quantity_ordered * price_each) AS total_price
FROM orderdetails
GROUP BY product_code, quantity_ordered;

-- Question 4:
-- Find the highest payment amount for each check number.
-- Display the check number and the highest amount paid for that check number.
-- Group the results by check number.

SELECT check_number, MAX(amount) AS highest_payment
FROM payments
GROUP BY check_number;
