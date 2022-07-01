--R(A,B) = {(0,1),(2,3),(0,1),(2,4),(3,4)}

--S(B,C) = {(0,1),(2,4),(2,5),(3,4),(0,2),(3,4)}

DROP TABLE S;
DROP TABLE R;

CREATE TABLE R(A int, B int);
INSERT INTO R Values(0,1);
INSERT INTO R Values(2,3);
INSERT INTO R Values(0,1);
INSERT INTO R Values(2,4);
INSERT INTO R Values(3,4);

CREATE TABLE S(B int, C int);
INSERT INTO S Values(0,1);
INSERT INTO S Values(2,4);
INSERT INTO S Values(2,5);
INSERT INTO S Values(3,4);
INSERT INTO S Values(0,2);
INSERT INTO S Values(3,4);

SELECT * FROM S;
SELECT * FROM R;
--i) Finds A+B on R.
SELECT A+B FROM R;
--ii)Sorts R based on B,A.
SELECT A,B FROM R ORDER BY B,A;
--iii)Turns R from a bag to a set.
SELECT DISTINCT A,B FROM R;
--iv)Computes the sum of B for each A value in R.
SELECT A, sum(B) AS "Sum of B" FROM R GROUP BY A;
--v)Joins R and S and computes the max value of C for each A.
SELECT A, max(C) AS "Max of C" FROM R INNER JOIN S ON R.B = S.B GROUP BY A;
--vi)
--match
SELECT DISTINCT R.* FROM R INNER JOIN S ON R.B = S.B;
--unmatch
SELECT R.* FROM R LEFT OUTER JOIN S ON R.B = S.B WHERE S.B IS NULL;
--vii)
--match
SELECT DISTINCT S.* FROM S INNER JOIN R ON S.B = R.B;
--unmatch
SELECT S.* FROM S LEFT OUTER JOIN R ON S.B = R.B WHERE R.B IS NULL;
--viii) Finds tuples of R which match and unmatch with S but in which R.B is less than S.B.
--match
SELECT R.*,S.* FROM R INNER JOIN S ON R.B < S.B;
--unmatch
SELECT R.*, S.* FROM R LEFT OUTER JOIN S ON R.B < S.B WHERE S.B IS NULL;