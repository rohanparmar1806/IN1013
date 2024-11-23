{\rtf1\ansi\ansicpg1252\cocoartf2820
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 SELECT SUM(bill_total) AS Income\
FROM restBill;\
\
SELECT SUM(bill_total) AS "Feb Income"\
FROM restBill\
WHERE bill_date BETWEEN 160201 AND 160229;\
\
SELECT AVG(bill_total) AS "Average Bill Table 2"\
FROM restBill\
WHERE table_no = 2;\
\
SELECT \
    MIN(no_of_seats) AS Min,\
    MAX(no_of_seats) AS Max,\
    AVG(no_of_seats) AS Avg\
FROM \
    restRest_table\
WHERE \
    room_name = 'Blue';\
\
SELECT \
    COUNT(DISTINCT table_no) AS Distinct_Tables\
FROM \
    restBill\
WHERE \
    waiter_no IN (004, 002);}