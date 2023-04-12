-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-12 11:27:33.005

-- tables
-- Table: Address
CREATE TABLE Address (
    Address_ID int  NOT NULL,
    Country varchar(50)  NOT NULL,
    State varchar(50)  NOT NULL,
    Zip_Code varchar(50)  NOT NULL,
    Street varchar(50)  NOT NULL,
    CONSTRAINT Address_pk PRIMARY KEY (Address_ID)
);

-- Table: Blood
CREATE TABLE Blood (
    Blood_ID int  NOT NULL,
    Blood_Type varchar(50)  NOT NULL,
    Blood_Bag_Number int  NOT NULL,
    Code int  NOT NULL,
    Patient_ID int  NOT NULL,
    Donor_ID int  NOT NULL,
    CONSTRAINT Blood_pk PRIMARY KEY (Blood_ID)
);

-- Table: BloodBank
CREATE TABLE BloodBank (
    Blood_Bank_ID int  NOT NULL,
    Blood_Type varchar(10)  NOT NULL,
    Quantity_onHand int  NOT NULL,
    Description varchar(255)  NOT NULL,
    Address_ID int  NOT NULL,
    CONSTRAINT BloodBank_pk PRIMARY KEY (Blood_Bank_ID)
);

-- Table: Donor
CREATE TABLE Donor (
    Donor_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Donation_Date date  NOT NULL,
    Contact_Number varchar(10)  NOT NULL,
    Address_ID int  NOT NULL,
    CONSTRAINT Donor_pk PRIMARY KEY (Donor_ID)
);

-- Table: Hospital
CREATE TABLE Hospital (
    Hospital_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Contact_Number varchar(10)  NOT NULL,
    Blood_Bank_ID int  NOT NULL,
    Address_ID int  NOT NULL,
    CONSTRAINT Hospital_pk PRIMARY KEY (Hospital_ID)
);

-- Table: Patient
CREATE TABLE Patient (
    Patient_ID int  NOT NULL,
    Name varchar(50)  NOT NULL,
    Acceptance_Date date  NOT NULL,
    Contact_Number varchar(10)  NOT NULL,
    Hospital_ID int  NOT NULL,
    Address_ID int  NOT NULL,
    CONSTRAINT Patient_pk PRIMARY KEY (Patient_ID)
);

-- foreign keys
-- Reference: BloodBank_Address (table: BloodBank)
ALTER TABLE BloodBank ADD CONSTRAINT BloodBank_Address FOREIGN KEY BloodBank_Address (Address_ID)
    REFERENCES Address (Address_ID);

-- Reference: Blood_Donor (table: Blood)
ALTER TABLE Blood ADD CONSTRAINT Blood_Donor FOREIGN KEY Blood_Donor (Donor_ID)
    REFERENCES Donor (Donor_ID);

-- Reference: Blood_Patient (table: Blood)
ALTER TABLE Blood ADD CONSTRAINT Blood_Patient FOREIGN KEY Blood_Patient (Patient_ID)
    REFERENCES Patient (Patient_ID);

-- Reference: Donor_Address (table: Donor)
ALTER TABLE Donor ADD CONSTRAINT Donor_Address FOREIGN KEY Donor_Address (Address_ID)
    REFERENCES Address (Address_ID);

-- Reference: Hospital_Address (table: Hospital)
ALTER TABLE Hospital ADD CONSTRAINT Hospital_Address FOREIGN KEY Hospital_Address (Address_ID)
    REFERENCES Address (Address_ID);

-- Reference: Hospital_BloodBank (table: Hospital)
ALTER TABLE Hospital ADD CONSTRAINT Hospital_BloodBank FOREIGN KEY Hospital_BloodBank (Blood_Bank_ID)
    REFERENCES BloodBank (Blood_Bank_ID);

-- Reference: Patient_Address (table: Patient)
ALTER TABLE Patient ADD CONSTRAINT Patient_Address FOREIGN KEY Patient_Address (Address_ID)
    REFERENCES Address (Address_ID);

-- Reference: Patient_Hospital (table: Patient)
ALTER TABLE Patient ADD CONSTRAINT Patient_Hospital FOREIGN KEY Patient_Hospital (Hospital_ID)
    REFERENCES Hospital (Hospital_ID);

-- End of file.

