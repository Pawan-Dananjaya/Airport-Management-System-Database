
-- Table: City with State
CREATE TABLE CityState (
    Cname VARCHAR(100) PRIMARY KEY,
    State VARCHAR(100)
);

-- Table: City in Country
CREATE TABLE CityCountry (
    Cname VARCHAR(100) PRIMARY KEY,
    Country VARCHAR(100)
    
);

-- Table: Airport Relation
CREATE TABLE AirportRelation (
    APname VARCHAR(100) PRIMARY KEY,
    State VARCHAR(100)
);

-- Table: Airport in Country
CREATE TABLE AirportCountry (
    APname VARCHAR(100) PRIMARY KEY,
    Country VARCHAR(100),
    Cname VARCHAR(100),
    FOREIGN KEY (Cname) REFERENCES CityCountry(Cname)
);

-- Table: Airline Relation
CREATE TABLE AirlineRelation (
    AirlineID VARCHAR(100) PRIMARY KEY,
    AName VARCHAR(100),
    Code VARCHAR(10)
);

-- Table: Airport Airline
CREATE TABLE AirportAirline (
    APname VARCHAR(100),
    AirlineID VARCHAR(100),
    PRIMARY KEY (APname, AirlineID),
    FOREIGN KEY (APname) REFERENCES AirportRelation(APname),
    FOREIGN KEY (AirlineID) REFERENCES AirlineRelation(AirlineID)
);

-- Table: Traffic Monitor
CREATE TABLE TrafficMonitor (
    Eid INT PRIMARY KEY,
    Shift VARCHAR(50)
);

-- Table: Engineer
CREATE TABLE Engineer (
    Eid INT PRIMARY KEY,
    Etype VARCHAR(100)
);

-- Table: Airport Authority
CREATE TABLE AirportAuthority (
    Eid INT PRIMARY KEY,
    Position VARCHAR(100)
);

-- Table: Administrative Support
CREATE TABLE AdministrativeSupport (
    Eid INT PRIMARY KEY,
    AStype VARCHAR(100)
);

-- Table: Employee Relation
CREATE TABLE EmployeeRelation (
    Eid INT PRIMARY KEY,
    Sex CHAR(1),
    Age INT,
    Address VARCHAR(255),
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    APname VARCHAR(100),
    Said INT,
    FOREIGN KEY (APname) REFERENCES AirportRelation(APname),
    FOREIGN KEY (Said) REFERENCES SalaryJob(Said)
);

-- Table: Salary to Job
CREATE TABLE SalaryJob (
    Said INT PRIMARY KEY,
    Jobtype VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Table: Employee Pno
CREATE TABLE EmployeePno (
    Eid INT,
    Pn1 VARCHAR(15),
    Pn2 VARCHAR(15),
    PRIMARY KEY (Eid),
    FOREIGN KEY (Eid) REFERENCES EmployeeRelation(Eid)
);

-- Table: Flight Relation
CREATE TABLE FlightRelation (
    FlightCode VARCHAR(10) PRIMARY KEY,
    Arrival VARCHAR(100),
    Destination VARCHAR(100),
    Source VARCHAR(100),
    Status VARCHAR(50),
    Duration TIME,
    FlightType VARCHAR(50),
    AirlineID VARCHAR(100),
    FOREIGN KEY (AirlineID) REFERENCES AirlineRelation(AirlineID)
);

-- Table: Flight Connecting
CREATE TABLE FlightConnecting (
    PID INT,
    LayoverTime TIME,
    NoOfStops INT,
    PRIMARY KEY (PID),
    FOREIGN KEY (PID) REFERENCES EmployerPassenger(PID)
);

-- Table: Employer Passenger
CREATE TABLE EmployerPassenger (
    Eid INT,
    PID INT,
    PRIMARY KEY (Eid, PID),
    FOREIGN KEY (Eid) REFERENCES EmployeeRelation(Eid)
);

-- Table: Passenger Relation
CREATE TABLE PassengerRelation (
    PID INT PRIMARY KEY,
    Age INT,
    Sex CHAR(1),
    Address VARCHAR(255),
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    FlightCode VARCHAR(10),
    FOREIGN KEY (FlightCode) REFERENCES FlightRelation(FlightCode)
);

-- Table: Passenger Pno
CREATE TABLE PassengerPno (
    PID INT PRIMARY KEY,
    Pn1 VARCHAR(15),
    Pn2 VARCHAR(15),
    FOREIGN KEY (PID) REFERENCES PassengerRelation(PID)
);

-- Table: Passenger Passport
CREATE TABLE PassengerPassport (
    PID INT PRIMARY KEY,
    PassportNo VARCHAR(20),
    FOREIGN KEY (PID) REFERENCES PassengerRelation(PID)
);

-- Table: Ticket Relation
CREATE TABLE TicketRelation (
    Tno INT PRIMARY KEY,
    Source VARCHAR(100),
    DateOfTravel DATE,
    DateOfBooking DATE,
    DateOfCancellation DATE,
    PID INT,
    PassportNo VARCHAR(20),
    PCID INT,
    FOREIGN KEY (PID) REFERENCES PassengerRelation(PID),
    FOREIGN KEY (PCID) REFERENCES PassengerClass(PCID),
    FOREIGN KEY (PassportNo) REFERENCES PassengerPassport(PassportNo)
);

-- Table: Passenger Class
CREATE TABLE PassengerClass (
    PCID INT PRIMARY KEY,
    Destination VARCHAR(100),
    Class VARCHAR(50),
    Surcharge DECIMAL(10, 2),
    SeatNo VARCHAR(10),
    Price DECIMAL(10, 2)
);
