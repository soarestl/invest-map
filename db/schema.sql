CREATE TABLE IF NOT EXISTS Company (
    companyName varchar(30) PRIMARY KEY,
    sector varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Fundamental (
    fundamentalName varchar(30) PRIMARY KEY,
    fundamentalValue REAL NOT NULL,
    description text
);

CREATE TABLE IF NOT EXISTS Analysis (
    companyName varchar(30) REFERENCES Company (companyName),
    fundamentalName varchar(30) REFERENCES Fundamental (fundamentalName),
    fundamentalValue REAL REFERENCES Fundamental (fundamentalValue),
    analysisDate varchar(10)
);









