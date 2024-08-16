USE HealthcareSystemDB;

SELECT * FROM Patients WHERE Gender = 'Female';
SELECT * FROM Appointments WHERE status = 'Scheduled';
SELECT * FROM Doctors WHERE Specialization = 'Internal Medicine';
SELECT * FROM Patients WHERE DateOfBirth >  1985-01-01;
SELECT * FROM MedicalRecords WHERE Diagnosis LIKE '%Cold';

SELECT * FROM Patients ORDER BY LastName;
SELECT * FROM Doctors ORDER BY Specialization DESC; 
SELECT * FROM Appointments ORDER BY AppointmentDate DESC;
SELECT * FROM Departments ORDER BY DepartmentName;
SELECT * FROM Billing ORDER BY BalanceAmount DESC;

SELECT Count(*) AS Nationalities FROM Patients GROUP BY Country;
SELECT Count(*) AS 'Number Of Appointments' FROM Appointments GROUP BY DoctorID;
SELECT Sum(TotalAmount) AS Total, PatientID FROM Billing GROUP BY PatientID;
SELECT Count(*) AS Appointments, DoctorID FROM Appointments GROUP BY DoctorID HAVING Appointments>1;

SELECT * FROM Patients WHERE FirstName LIKE 'J%';
SELECT * FROM Doctors WHERE LastName LIKE '%son%';
SELECT * FROM Departments WHERE DepartmentName LIKE '%y';
SELECT * FROM MedicalRecords WHERE Diagnosis LIKE 'Hypertension';
SELECT * FROM Patients WHERE Email LIKE '%example.com';

SELECT * FROM Appointments WHERE AppointmentDate BETWEEN '2023-07-01' AND '2023-07-03';
SELECT * FROM Patients WHERE DateOfBirth BETWEEN '1980-01-01' AND '1990-12-31';
SELECT * FROM Billing WHERE TotalAmount BETWEEN 100 AND 500;
SELECT * FROM Appointments WHERE AppointmentDate BETWEEN '2023-07-01' AND '2023-07-08';

SELECT * FROM Patients ORDER BY LastName LIMIT 5;
SELECT * FROM Billing ORDER BY TotalAmount DESC LIMIT 3;
SELECT * FROM Appointments ORDER BY AppointmentDate LIMIT 10;
SELECT * FROM Doctors ORDER BY FirstName LIMIT 5;
SELECT * FROM Billing ORDER BY BalanceAmount DESC LIMIT 5;

SELECT * FROM Patients WHERE Gender = 'female' AND Country= 'USA' ORDER BY LastName LIMIT 3;
SELECT Count(*) AS NumberOfAppointments, DoctorID FROM Appointments GROUP BY DoctorID HAVING NumberOfAppointments>2 ORDER BY NumberOfAppointments DESC;
SELECT * FROM Patients WHERE LastName LIKE 'S%' AND DateOfBirth>1985 ORDER BY DateOfBirth;


SELECT PatientID, Sum(TotalAmount) AS TotalBill
FROM Billing 
GROUP BY PatientID 
HAVING TotalBill BETWEEN 200 AND 1500 AND
Count(AppointmentID)>2;


SELECT * FROM Billing;




