SELECT b.cust_name\
FROM restBill b\
WHERE b.bill_total > 450.00\
AND b.bill_date IN (\
    SELECT rm.room_date\
    FROM restRoom_management rm\
    JOIN restStaff s ON rm.headwaiter = s.staff_no\
    WHERE s.first_name = 'Charles'\
);\
\
SELECT s.first_name, s.surname\
FROM restRoom_management rm\
JOIN restStaff s ON rm.headwaiter = s.staff_no\
WHERE rm.room_date = 160111\
AND rm.room_name IN (\
    SELECT room_name\
    FROM restBill\
    WHERE cust_name = 'Nerida Smith' AND bill_date = 160111\
);\
\
SELECT b.cust_name\
FROM restBill b\
WHERE b.bill_total = (\
    SELECT MIN(bill_total)\
    FROM restBill\
);\
\
SELECT s.first_name, s.surname\
FROM restStaff s\
WHERE s.staff_no NOT IN (\
    SELECT waiter_no\
    FROM restBill\
);\
\
SELECT b.cust_name, s.first_name AS headwaiter_first_name, s.surname AS headwaiter_surname, rm.room_name\
FROM restBill b\
JOIN restRoom_management rm ON b.table_no IN (\
    SELECT table_no\
    FROM restRest_table\
    WHERE room_name = rm.room_name\
)\
JOIN restStaff s ON rm.headwaiter = s.staff_no\
WHERE b.bill_total = (\
    SELECT MAX(bill_total)\
    FROM restBill\
);}
