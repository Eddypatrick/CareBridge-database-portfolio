
CREATE DATABASE IF NOT EXISTS CareBridge;
USE CareBridge;

CREATE TABLE IF NOT EXISTS Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Sex VARCHAR(20),
    PhoneNumber VARCHAR(20) NOT NULL,
    Email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    DoctorName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100) NOT NULL
);
select* from patients;
SHOW TABLES;
describe patients;
INSERT INTO Patients
    (FirstName, LastName, DateOfBirth, Sex, PhoneNumber, Email)
VALUES
    ('Ada', 'Okafor', '1995-04-12', 'Female',
     '08012345678', 'ada@example.com'),
    ('Blessing', 'Patrick', '1998-09-20', 'Female',
     '08023456789', NULL);
USE CareBridge;

INSERT INTO Doctors (DoctorName, Specialty)
VALUES
    ('Dr James Bello', 'General Practice'),
    ('Dr Sarah Okon', 'Paediatrics');

SELECT * FROM Doctors;

INSERT INTO Appointments
    (PatientID, DoctorID, AppointmentDateTime, Status)
VALUES
    (1, 1, '2026-10-22 09:00:00', 'Scheduled');

SELECT * FROM Appointments;
     SELECT
    Appointments.AppointmentID,
    Patients.FirstName,
    Patients.LastName,
    Doctors.DoctorName,
    Doctors.Specialty,
    Appointments.AppointmentDateTime,
    Appointments.Status
FROM Appointments
JOIN Patients
    ON Appointments.PatientID = Patients.PatientID
JOIN Doctors
    ON Appointments.DoctorID = Doctors.DoctorID;
    EXPLAIN
SELECT
    Appointments.AppointmentID,
    Patients.FirstName,
    Patients.LastName,
    Doctors.DoctorName,
    Doctors.Specialty,
    Appointments.AppointmentDateTime,
    Appointments.Status
FROM Appointments
JOIN Patients
    ON Appointments.PatientID = Patients.PatientID
JOIN Doctors
    ON Appointments.DoctorID = Doctors.DoctorID;
    EXPLAIN
SELECT *
FROM Appointments
WHERE PatientID = 1;

     
     
