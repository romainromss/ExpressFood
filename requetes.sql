-- prix moyen des commandes
SELECT AVG(price) AS prix_moyen_commande FROM products;

-- prix total des commandes
SELECT orders_id, SUM(price)  AS prix_total FROM products GROUP BY orders_id;

-- temps total des commandes
SELECT TIMEDIFF (end_at, created_at) FROM orders;

-- stock des commandes par client
SELECT * FROM stocks WHERE owners = 'clients';

-- commandes livrées
SELECT * FROM deliveries WHERE status = 'delivery';
