SELECT 
    company_code,
    founder,
    (SELECT COUNT(DISTINCT lead_manager_code) from lead_manager where company_code = C.company_code),
    (SELECT COUNT(DISTINCT senior_manager_code) from senior_manager where company_code = C.company_code),
    (SELECT COUNT(DISTINCT manager_code) from manager where company_code = C.company_code),
    (SELECT COUNT(DISTINCT employee_code) from employee where company_code = C.company_code)
FROM Company C
ORDER BY company_code;