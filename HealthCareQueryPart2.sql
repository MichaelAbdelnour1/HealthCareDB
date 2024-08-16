USE HealthcareSystemDB;

SELECT COUNT(*) AS Entries FROM Patients;
SELECT Status, COUNT(*) AS Results FROM Appointments WHERE Status = 'Completed';
SELECT Diagnosis, COUNT(*) AS NumRecords FROM Medicalrecords WHERE Diagnosis = 'Asthma';

SELECT SUM(TotalAmount) AS Total FROM Billing;
SELECT SUM(PaidAmount) AS TotalPaid FROM Billing;
SELECT PaymentStatus, SUM(BalanceAmount) AS TotalBalence FROM Billing WHERE PaymentStatus = 'Unpaid';

SELECT AVG(TotalAmount) AS AvgAmount FROM Billing;
SELECT AVG(YEAR(CURDATE()) - YEAR(DateOfBirth)) AS AverageAge FROM Patients;
SELECT AVG(PaidAmount) AS AvgPaidAmount FROM Billing;
SELECT AVG(Dosage) AS AvgDosage FROM Prescriptions;

SELECT MIN(AppointmentDate) AS MinDate, MAX(AppointmentDate) AS MaxDate FROM Appointments;
SELECT MIN(TotalAmount) AS MinAmount, MAX(TotalAmount) AS MaxAmount FROM Billing;
SELECT MIN(Dosage) AS MinDosage, MAX(Dosage) AS MaxDosage FROM Prescriptions;
SELECT MIN(DateOfBirth) AS Oldest, MAX(DateOfBirth) AS Youngest FROM Patients;

SELECT BillID, TotalAmount, 
	CASE 
    WHEN TotalAmount>1000 THEN 'High'
    WHEN TotalAmount BETWEEN 500 AND 1000 THEN 'Medium'
    WHEN TotalAmount<500 THEN 'Low'
    END AS Description FROM Billing;
    
SELECT PatientID, DateOfBirth,
	CASE
    WHEN YEAR(CURDATE()) - YEAR(DateOfBirth)<18 THEN 'Minor'
    WHEN YEAR(CURDATE()) - YEAR(DateOfBirth) BETWEEN 18 AND 65 THEN 'Adult'
    WHEN YEAR(CURDATE()) - YEAR(DateOfBirth)>65 THEN 'Senior'
    END AS Description FROM Patients;
    
SELECT * FROM Appointments WHERE Status IN('Completed', 'Scheduled');
SELECT * FROM Doctors WHERE Specialization IN ('Internal Medicine', 'Cardiology', 'Pediatrics');
SELECT * FROM Medicalrecords  WHERE Diagnosis IN ('Diabetes', 'Hypertension', 'Asthma');
SELECT * FROM Departments WHERE DepartmentName IN('Surgery', 'Cardiology',  'Pediatrics');

SELECT * FROM departments;