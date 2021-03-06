DELIMITER //
 DROP TRIGGER IF EXISTS users_before_update;
 CREATE TRIGGER users_before_update
	BEFORE UPDATE ON users
	FOR EACH ROW
BEGIN
	SET NEW.state = UPPER(NEW.state);
END//
DELIMITER //
 DROP TRIGGER IF EXISTS costs_before_update;
 CREATE TRIGGER costs_before_update
	BEFORE UPDATE ON costs
	FOR EACH ROW
BEGIN
	SET NEW.cost = FORMAT(NEW.cost,2);
END//
DELIMITER //
 DROP TRIGGER IF EXISTS suppliers_before_update;
 CREATE TRIGGER suppliers_before_update
	BEFORE UPDATE ON suppliers
	FOR EACH ROW
BEGIN
	SET NEW.state = UPPER(NEW.state);
END//
DELIMITER //
 DROP TRIGGER IF EXISTS orders_before_update;
 CREATE TRIGGER orders_before_update
	BEFORE UPDATE ON orders
	FOR EACH ROW
BEGIN
	SET NEW.totalcost = FORMAT(NEW.totalcost,2);
END// 
