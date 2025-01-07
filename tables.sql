CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Date_of_Birth DATE,
    Gender VARCHAR(10),
);


CREATE TABLE Visit_Record (
    Visit_ID INT PRIMARY KEY,
    Patient_ID INT,
    Visit_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);


CREATE TABLE Laboratory_Tests (
    Test_ID INT PRIMARY KEY,
    Visit_ID INT,
    Test_Type VARCHAR(255),
    Result VARCHAR(255),
    FOREIGN KEY (Visit_ID) REFERENCES Visit_Record(Visit_ID)
);