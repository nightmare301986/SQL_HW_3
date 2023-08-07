# Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname, snum, comm. (к первой или второй таблице, используя SELECT)

SELECT city, sname, snum, comm FROM salecustord.salespeople;

#  Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)

SELECT cname, rating FROM salecustord.customers;

/*  Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. 
(уникальные значения в  “snum“ “Продавцы”)
*/
SELECT distinct snum FROM salecustord.salespeople;

# Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE": (“заказчики”) 

SELECT * FROM salecustord.customers where cname like "G%";

# Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt”  - сумма)

SELECT * FROM salecustord.orders
where amt > 1000;

# Напишите запрос который выбрал бы наименьшую сумму заказа. (Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)

SELECT min(amt) FROM salecustord.orders;

SELECT cnum, odate, min(amt) AS 'Наименьшая сумма заказа' 
FROM salecustord.orders 
GROUP BY cnum, odate 
HAVING min(amt) limit 1; 

# Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.

SELECT * FROM salecustord.customers
where rating > 100 and city !='Rome';