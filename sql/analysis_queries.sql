/* 
1. Total number of patients.
2. Number of patients by city.
3. Average patient age.
4. Number of doctors by specialty. 
5. Total appointments. 
6. Number of appointments by status.
7. Most common reason for visit. 
8. Total revenue collected. 
9. Revenue by payment method
*/ 

SELECT * FROM Patients

-- 1. Total number of patients
SELECT COUNT(*) 
FROM PATIENTS

-- 2. Number of patients by City 
SELECT 
	city,
	COUNT(*) AS total_patients
FROM Patients	
GROUP BY city
-- ORDER BY total_patients DESC

-- 3. Average Patient Age
SELECT 
	ROUND(AVG(age)) AS average_patient_age
FROM patients 	

SELECT * FROM doctors
-- 4. Number of doctors by specialty.
SELECT 
	specialty,
	COUNT(*) AS total_doctors
FROM doctors 
GROUP BY specialty
ORDER BY total_doctors DESC

SELECT * FROM appointments
-- 5. Total appointments 
SELECT 
	COUNT(*) AS total_appointments
FROM appointments	

-- 6. Number of appointments by status
SELECT 
	appointment_status,
	COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_status
ORDER BY total_appointments DESC

-- 7. Most common reason for visit.
SELECT 
	COUNT(*) AS total_visits,
	reason_for_visit
FROM appointments
GROUP BY reason_for_visit
ORDER BY total_visits DESC

SELECT * FROM billing
-- 8. Total revenue collected.
SELECT 
	SUM(amount_paid) AS total_revenue
FROM billing	
	
-- 9. Revenue by payment method
SELECT
	payment_method,
	SUM(amount_paid) AS total_revenue
FROM billing 
GROUP BY payment_method
ORDER BY total_revenue DESC

SELECT * FROM doctors
-- 10. Number of Doctors by Branch
SELECT 
	branch,
	COUNT(*) AS total_doctors
FROM doctors
GROUP BY branch 
ORDER BY total_doctors DESC

SELECT * FROM billing
-- 11. Revenue by Payment Status
SELECT 
	payment_status,
	SUM(amount_paid) AS revenue 
FROM billing 
GROUP BY payment_status
ORDER BY revenue DESC

-- 12. Top 10 Highest Bills
SELECT 
	invoice_id,
	patient_id,
	amount_charged
FROM billing 
ORDER BY amount_charged DESC
LIMIT 10 

-- 13. Outstanding Payments
SELECT 
	SUM(amount_charged - amount_paid) AS total_outstanding_balance
FROM billing	

-- 14. Get the patients still owing
SELECT 
	p.full_name,
	b.invoice_id,
	p.patient_id,
	SUM(b.amount_charged - b.amount_paid) AS total_outstanding_balance
FROM billing b	
JOIN patients p
	ON b.patient_id = p.patient_id
GROUP BY 
	p.full_name,
	b.invoice_id,
	p.patient_id
ORDER BY total_outstanding_balance


-- Top 10 Patients by Total Amount Paid
SELECT 
	p.full_name,
	p.patient_id,
	SUM(b.amount_paid) AS total_paid
FROM billing b 
JOIN patients p
	ON b.patient_id = p.patient_id 
GROUP BY 
	p.full_name,
	p.patient_id
ORDER BY total_paid DESC
LIMIT 10





select * from billing LIMIT 5;

select * from patients LIMIT 5;

