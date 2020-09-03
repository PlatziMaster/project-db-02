---SELECT
select * from categories

---CREATE
INSERT INTO categories values (9,'Sodas','Sodas');
---UPDATE
UPDATE categories
SET description = 'cm'
WHERE category_name = 'Sodas'
---DELETE
DELETE FROM categories
WHERE category_name = 'Sodas'
--SORT
select * from categories order by category_id DESC
--GROUP BY
--Retrieve record with group by supplier_id and count where unit_price less than 7
select supplier_id, count(*) from products
where unit_price < 7
group by supplier_id


