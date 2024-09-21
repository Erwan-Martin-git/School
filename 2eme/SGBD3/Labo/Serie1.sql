-- Serie 1 table DUAL--

/*
3
SELECT to_char(CURRENT_DATE+3,'DD/MM/YYYY') as "Date du jour"
FROM DUAL
*/

/*
4
SELECT power(14,2)
FROM DUAL
*/

/*
5
SELECT ROUND(SQRT(30), 2)
FROM DUAL
*/

/*
6

def A = &annee 

SELECT TO_DATE('31/12' || &&A, 'DD/MM/YYYY') - TO_DATE('01/01' || &&A, 'DD/MM/YYYY')
FROM DUAL;
*/

def A = &date1
def B = &date2
select abs(months_between(to_date('&&a', 'DD/MM/YYYY'), to_date('&&b', 'DD/MM/YYYY')))
from dual