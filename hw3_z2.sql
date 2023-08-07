# Отсортируйте поле “зарплата” в порядке  возрастания
SELECT * FROM spisok.work
order by salary;

# Отсортируйте поле “зарплата” в порядке убывания
SELECT * FROM spisok.work
order by  salary desc;

# Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)
SELECT * FROM spisok.work
order by  salary limit 7,5 ;

# Выполните группировку всех сотрудников по специальности, суммарная зарплата которых превышает 100000

SELECT   speciality, sum(salary) from spisok.work
group by speciality
having sum(salary) >= 100000;

