CREATE DATABASE HospitalManagementSystem01;
USE HospitalManagementSystem01;


CREATE TABLE Doctor
DoctorID INT PRIMARY KEY,
FristName VARCHAR(50),
LastName VARCHAR(50),
);

ALTER TABLE Doctor add address VARCHAR(100);
EXEC sp_help Doctor

CREATE TABLE Patient(
PatientID INT PRIMARY KEY,
FristName VARCHAR(50),
Phone VARCHAR(15),
Address VARCHAR(100),
Disease VARCHAR(100)
);
INSERT INTO Patient(PatientID,FristName,Address,Disease)VALUES(4,'sara','lahore','asthma');

CREATE TABLE PatientPhones(
PatientID INT,
PhoneNumber VARCHAR(150),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
UPDATE PatientPhones SET  PhoneNumber=0324567954
WHERE PatientID=5;

CREATE TABLE Medicine(
MedicineID INT PRIMARY KEY,
Name VARCHAR(100),
Price DECIMAL(10,2),
Quantity INT
);

ALTER TABLE Medicine drop column Name;


CREATE TABLE Bill(
BillID INT PRIMARY KEY,
PatientID INT,
MedicineID INT,
FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)
);


CREATE TABLE Treats_7(
DoctorID INT,
PatientID INT,
PRIMARY KEY(DoctorID),
FOREIGN KEY(DoctorID) REFERENCES Doctor(DoctorID),
FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)
);