SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS num_bills\
FROM restBill b\
JOIN restStaff s ON b.waiter_no = s.staff_no\
GROUP BY s.first_name, s.surname, b.bill_date\
HAVING COUNT(b.bill_no) >= 2;\
\
SELECT rt.room_name, COUNT(rt.table_no) AS num_tables\
FROM restRest_table rt\
WHERE rt.no_of_seats > 6\
GROUP BY rt.room_name;\
\
SELECT rm.room_name, SUM(b.bill_total) AS total_bill\
FROM restBill b\
JOIN restRest_table rt ON b.table_no = rt.table_no\
JOIN restRoom_management rm ON rt.room_name = rm.room_name\
GROUP BY rm.room_name;\
\
SELECT s.first_name AS headwaiter_first_name, s.surname AS headwaiter_surname, SUM(b.bill_total) AS total_bill\
FROM restBill b\
JOIN restStaff s ON b.waiter_no = s.staff_no\
JOIN restRoom_management rm ON b.bill_date = rm.room_date AND b.table_no IN (\
    SELECT table_no\
    FROM restRest_table\
    WHERE room_name = rm.room_name\
)\
GROUP BY s.first_name, s.surname\
ORDER BY total_bill DESC;\
\
SELECT b.cust_name\
FROM restBill b\
GROUP BY b.cust_name\
HAVING AVG(b.bill_total) > 400;\
\
SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS num_bills\
FROM restBill b\
JOIN restStaff s ON b.waiter_no = s.staff_no\
GROUP BY s.first_name, s.surname, b.bill_date\
HAVING COUNT(b.bill_no) >= 3;}
