--SELECT * FROM employee;

/* SELECT 
emp.firstName, 
emp.lastName, 
emp.title, 
mng.firstName AS ManagerFirstName,
mng.lastName AS ManagerLastName
FROM employee AS emp 
INNER JOIN employee AS mng 
ON emp.managerId = mng.employeeId
ORDER BY emp.employeeId ASC; */

/* SELECT 
emp.firstName, 
emp.lastName, 
emp.title,
sls.salesAmount,
sls.soldDate
FROM employee emp 
LEFT JOIN sales sls ON emp.employeeId = sls.employeeId 
WHERE emp.title='Sales Person' AND sls.salesId IS NULL; */

/* SELECT emp.employeeId, emp.firstName, emp.lastName, COUNT(*) AS CarsSold 
FROM sales sls 
INNER JOIN employee emp
ON sls.employeeId = emp.employeeId 
GROUP BY emp.employeeId, emp.firstName, emp.lastName 
ORDER BY CarsSold DESC; */

/* SELECT emp.employeeId, emp.firstName, emp.lastName, 
MAX(sls.salesAmount) AS MostExpensiveCar, MIN(sls.salesAmount) AS LeastExpensivecar, sls.soldDate
FROM sales sls 
INNER JOIN employee emp 
ON emp.employeeId = sls. employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName; */

/* SELECT emp.employeeId, emp.firstName, emp.lastName, COUNT(*) AS CarsSold
FROM sales sls INNER JOIN employee emp ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING CarsSold >= 5
ORDER BY CarsSold; */

SELECT sls.soldDate , COUNT(*) SalesPerYear 
FROM sales sls WHERE sls.soldDate >= date('now','start of year') 
GROUP BY sls.soldDate