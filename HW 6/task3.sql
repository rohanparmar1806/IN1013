SELECT DISTINCT s.first_name, s.surname\
FROM restBill b\
JOIN restStaff s ON b.waiter_no = s.staff_no\
WHERE b.cust_name = 'Tanya Singh';\
\
SELECT rm.room_date\
FROM restRoom_management rm\
JOIN restStaff s ON rm.headwaiter = s.staff_no\
WHERE s.first_name = 'Charles' AND rm.room_name = 'Green' AND rm.room_date BETWEEN 160201 AND 160229;\
\
SELECT DISTINCT s.first_name, s.surname\
FROM restStaff s\
WHERE s.headwaiter = (\
    SELECT headwaiter\
    FROM restStaff\
    WHERE first_name = 'Zoe' AND surname = 'Ball'\
);\
\
SELECT b.cust_name, b.bill_total, s.first_name AS waiter_first_name, s.surname AS waiter_surname\
FROM restBill b\
JOIN restStaff s ON b.waiter_no = s.staff_no\
ORDER BY b.bill_total DESC;\
\
SELECT DISTINCT s.first_name, s.surname\
FROM restBill b1\
JOIN restBill b2 ON b1.table_no = b2.table_no\
JOIN restStaff s ON b1.waiter_no = s.staff_no\
WHERE b1.bill_no IN (14, 17);\
\
SELECT DISTINCT s.first_name, s.surname\
FROM restRoom_management rm\
JOIN restStaff s ON rm.headwaiter = s.staff_no OR s.staff_no IN (\
    SELECT waiter_no\
    FROM restBill\
    WHERE table_no IN (\
        SELECT table_no\
        FROM restRest_table\
        WHERE room_name = 'Blue'\
    )\
    AND bill_date = 160312\
)\
WHERE rm.room_name = 'Blue' AND rm.room_date = 160312;}
