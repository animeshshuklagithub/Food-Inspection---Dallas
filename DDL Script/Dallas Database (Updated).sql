CREATE TABLE `DimInspection` (
	`InspID` int(10) NOT NULL,
	`Inspection_Type` varchar(50) NOT NULL,
	`Inspection_Date` date NOT NULL,
	`Inspection_Score` int(10) NOT NULL,
	`Inspection_Month` varchar(50) NOT NULL,
	`Inspection_Year` varchar(50) NOT NULL,
	CONSTRAINT `pk_DimInspection_InspID` PRIMARY KEY (`InspID`)
);

CREATE TABLE `DimLocation` (
	`LocID` int(10) NOT NULL,
	`RestID` int(10) NOT NULL,
	`Street_Name` varchar(50) NULL,
	`Street_Type` varchar(50) NULL,
	`Street_Direction` varchar(50) NULL,
	`Street_Unit` int(10) NULL,
	`Street_Address` varchar(50) NULL,
	`Zip_Code` int(10) NOT NULL,
	`Lat_Long_Location` varchar(50) NOT NULL,
	CONSTRAINT `pk_DimLocation_LocID` PRIMARY KEY (`LocID`)
);

CREATE TABLE `DimRestaurant` (
	`RestID` int(10) NOT NULL,
	`Restaurant_Name` varchar(50) NOT NULL,
	CONSTRAINT `pk_DimRestaurant_RestID` PRIMARY KEY (`RestID`)
);

CREATE TABLE `DimViolation` (
	`ViolationID` int(10) NOT NULL,
	`RestID` int(10) NOT NULL,
	`Restaurant_Name` varchar(50) NOT NULL,
	`Violation Description` varchar(50) NULL,
	`Violation Points` int(10) NULL,
	`Violation Detail` varchar(50) NULL,
	`Violation Memo` varchar(50) NULL,
	CONSTRAINT `pk_DimViolation_ViolationID` PRIMARY KEY (`ViolationID`)
);

CREATE TABLE `FactDallas` (
	`FactID` int(10) NOT NULL,
	`RestID` int(10) NOT NULL,
	`LocID` int(10) NOT NULL,
	`InspID` int(10) NOT NULL,
	`ViolationID` int(10) NOT NULL,
	CONSTRAINT `pk_FactViolation_VID` PRIMARY KEY (`FactID`)
);

ALTER TABLE `DimLocation` ADD CONSTRAINT `fk_DimRestaurant_DimLocation` FOREIGN KEY (`RestID`)
REFERENCES `DimRestaurant` (`RestID`);

ALTER TABLE `DimViolation` ADD CONSTRAINT `fk_DimRestaurant_DimViolation` FOREIGN KEY (`RestID`)
REFERENCES `DimRestaurant` (`RestID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimInspection_FactDallas` FOREIGN KEY (`InspID`)
REFERENCES `DimInspection` (`InspID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimLocation_FactDallas` FOREIGN KEY (`LocID`)
REFERENCES `DimLocation` (`LocID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimRestaurant_FactDallas` FOREIGN KEY (`RestID`)
REFERENCES `DimRestaurant` (`RestID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimViolation_FactDallas` FOREIGN KEY (`ViolationID`)
REFERENCES `DimViolation` (`ViolationID`);

