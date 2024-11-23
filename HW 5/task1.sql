{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT bill_date, bill_total\
FROM restBill\
WHERE cust_name = 'Bob Crow';\
\
SELECT DISTINCT cust_name\
FROM restBill\
WHERE cust_name LIKE '%Smith'\
ORDER BY cust_name DESC;\
\
SELECT DISTINCT cust_name\
FROM restBill\
WHERE cust_name LIKE '% C%';\
\
SELECT first_name, surname\
FROM restStaff\
WHERE staff_no IN (SELECT DISTINCT headwaiter FROM restStaff WHERE headwaiter IS NOT NULL);\
\
SELECT *\
FROM restBill\
WHERE bill_date BETWEEN 160201 AND 160229;\
\
SELECT DISTINCT bill_date\
FROM restBill\
WHERE bill_date BETWEEN 150101 AND 151231\
ORDER BY bill_date ASC;}