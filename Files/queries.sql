SELECT ch.card_holder_name, cc.card_number, t.date, t.amount, m.merchant_name AS merchant,
        mc.merchant_category AS category
FROM transaction AS t
JOIN credit_card AS cc ON cc.card_number = t.card_number
JOIN card_holder AS ch ON ch.card_holder_id = cc.id_card_holder
JOIN merchant AS m ON m.merchant_store_id = t.id_merchant
JOIN merchant_category AS mc ON mc.merchant_id = m.id_merchant_category
ORDER BY ch.card_holder_name;

SELECT *
FROM transaction AS t
WHERE date_part('hour', t.date) >= 7 AND date_part('hour', t.date) <= 9
ORDER BY amount DESC
LIMIT 100;


SELECT COUNT(amount) AS "Transactions under $2.00"
FROM transaction
WHERE amount < 2.00;

SELECT *
FROM transaction
WHERE amount < 2.00
ORDER BY card_number, amount DESC;

SELECT m.merchant_name AS Merchant, mc.merchant_category AS category,
COUNT(t.amount) AS micro_transactions
FROM transaction AS t
JOIN merchant as m 
ON m.merchant_store_id = t.id_merchant
JOIN merchant_category AS mc
ON mc.merchant_id = m.id_merchant_category
WHERE t.amount < 2.00
GROUP BY m.merchant_name, mc.merchant_category
ORDER BY micro_transactions DESC
LIMIT 5;

CREATE VIEW card_holder_transactions AS
SELECT ch.card_holder_name, cc.card_number, t.date, t.amount, m.merchant_name AS merchant,
        mc.merchant_category AS category
FROM transaction AS t
JOIN credit_card AS cc ON cc.card_number = t.card_number
JOIN card_holder AS ch ON ch.card_holder_id = cc.id_card_holder
JOIN merchant AS m ON m.merchant_store_id = t.id_merchant
JOIN merchant_category AS mc ON mc.merchant_id = m.id_merchant_category
ORDER BY ch.card_holder_name;

CREATE VIEW morning_transactions AS
SELECT *
FROM transaction AS t
WHERE date_part('hour', t.date) >= 7 AND date_part('hour', t.date) <= 9
ORDER BY amount DESC
LIMIT 100;

CREATE VIEW micro_transactions AS
SELECT *
FROM transaction
WHERE amount < 2.00
ORDER BY card_number, amount DESC;

CREATE VIEW count_of_micro_transactions AS
SELECT COUNT(amount) AS "Transactions under $2.00"
FROM transaction
WHERE amount < 2.00;

CREATE VIEW top_five_hacked_merchants AS
SELECT m.merchant_name AS Merchant, mc.merchant_category AS category,
COUNT(t.amount) AS micro_transactions
FROM transaction AS t
JOIN merchant as m 
ON m.merchant_store_id = t.id_merchant
JOIN merchant_category AS mc
ON mc.merchant_id = m.id_merchant_category
WHERE t.amount < 2.00
GROUP BY m.merchant_name, mc.merchant_category
ORDER BY micro_transactions DESC
LIMIT 5;