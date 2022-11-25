USE delivery;

# Сортировка по убыванию по количеству заказов в месяц
SELECT month_name, amount_of_orders
FROM year_statistics
ORDER BY amount_of_orders DESC;

# Сумма количества заказов за один год
SELECT SUM(amount_of_orders) AS orders_per_year FROM year_statistics;

# Максимальное количество заказов за один месяц
SELECT month_name, amount_of_orders FROM year_statistics
WHERE amount_of_orders = (SELECT MAX(amount_of_orders)
FROM year_statistics);

# Сколько заказов каждый курьер доставил клиенту
SELECT courier_id, COUNT(order_id)
From delivery_list
WHERE date_arrived IS NOT NULL
GROUP BY courier_id;

# Информация о клиентах, проживающих в Южном округе
SELECT * FROM Customers
WHERE district IN ('Южный');

# Информация о заказах, которые не были приняты
SELECT * FROM delivery_list
WHERE taken NOT IN ('Да');

# О продуктах из меню, которые были заказаны
SELECT menu_name FROM products
WHERE EXISTS
(SELECT * FROM orders_products WHERE orders_products.product_id = products.product_id);

# О продуктах из меню, которые не были заказаны
WHERE NOT EXISTS
(SELECT * FROM orders_products WHERE orders_products.product_id = products.product_id);

# Частота округов среди клиентов
SELECT district 
FROM customers
GROUP BY district
ORDER BY COUNT(district) DESC;

# Список клиентов и информация о курьерах
SELECT 'Customer' AS category, first_name, last_name, phone_number
FROM customers
UNION
SELECT 'Employee' AS category, first_name, last_name, phone_number
FROM courier_info;

# Детали каждого заказа
SELECT orders_products.order_id, products.menu_name, quantity, ROUND(price*quantity, 2) AS total_price
FROM orders_products
INNER JOIN products ON orders_products.product_id = products.product_id
ORDER BY order_id, quantity;

# Все доступные районы для каждого курьера на автомобиле
SELECT DISTINCT courier_info.courier_id, customers.district
FROM courier_info
CROSS JOIN customers WHERE courier_info.delivery_type = 'авто'
ORDER BY courier_id;

# Информация об имени клиента и номере его заказа

SELECT customers.first_name, customers.last_name,  customers.phone_number, orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;