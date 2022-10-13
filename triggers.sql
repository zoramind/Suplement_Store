-- Trigger for inventory purchased/bought
delimiter |
DROP TRIGGER IF EXISTS inventory_update_purchases |

CREATE TRIGGER inventory_update_purchases AFTER INSERT 
ON purchases
FOR EACH ROW
BEGIN 
	UPDATE products
		SET products.inventory = products.inventory + NEW.inventory_bought  
		WHERE products.product_id = NEW.product_id;
END; |

delimiter ;

-- Trigger for updating inventory after an order has been submited
DELIMITER $$$
DROP TRIGGER IF EXISTS inventory_update_order $$$

CREATE TRIGGER inventory_update_order
AFTER INSERT ON invoices_details
FOR EACH ROW 
BEGIN
	UPDATE products
		SET products.inventory = products.inventory - NEW.quantity
		WHERE products.product_id = NEW.product_id;
END; $$$

delimiter ;

-- Trigger for updating cost_unit into log table
DELIMITER //
DROP TRIGGER IF EXISTS unit_cost_update //

CREATE TRIGGER unit_cost_update AFTER UPDATE ON products
FOR EACH ROW 
BEGIN
	IF OLD.unit_cost <> NEW.unit_cost THEN
		INSERT INTO log_table(product_id,pre_unit_cost,pos_unit_cost)
		VALUES(OLD.product_id,OLD.unit_cost,NEW.unit_cost);
	END IF;
END; //

delimiter ;

-- Trigger for limitating rating of product(higher limit)
DELIMITER $$$$
DROP TRIGGER IF EXISTS rating_product_trigger_part1 $$$$

CREATE TRIGGER rating_product_trigger_part1 BEFORE INSERT ON ratings
FOR EACH ROW
BEGIN
  IF new.rating_star > 5
  THEN
    SET new.rating_star = 5;
  END IF;
END; $$$$

DELIMITER ;

DELIMITER |||

DROP TRIGGER IF EXISTS rating_product_trigger_part2 |||

CREATE TRIGGER rating_product_trigger_part2 BEFORE UPDATE ON ratings
FOR EACH ROW
BEGIN
  IF new.rating_star > 5
  THEN
    SET new.rating_star = 5;
  END IF;
END; |||

delimiter ;

-- Trigger for limitating rating of product(lower limit)
delimiter $$$$$
DROP TRIGGER IF EXISTS rating_product_trigger_part3 $$$$$

CREATE TRIGGER rating_product_trigger_part3 BEFORE INSERT ON ratings
FOR EACH ROW
BEGIN
  IF new.rating_star < 0
  THEN
    SET new.rating_star = 0;
  END IF;
END; $$$$$

DELIMITER ;

DELIMITER ||||

DROP TRIGGER IF EXISTS rating_product_trigger_part4 ||||

CREATE TRIGGER rating_product_trigger_part4 BEFORE UPDATE ON ratings
FOR EACH ROW
BEGIN
  IF new.rating_star < 0
  THEN
    SET new.rating_star = 0;
  END IF;
END; ||||

delimiter ;