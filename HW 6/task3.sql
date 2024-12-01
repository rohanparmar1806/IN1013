{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT DISTINCT s.first_name, s.surname\
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