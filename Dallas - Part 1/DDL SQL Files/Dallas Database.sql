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
	`Violation Description -1` varchar(50) NULL,
	`Violation Points - 1` int(10) NULL,
	`Violation Detail - 1` varchar(50) NULL,
	`Violation Memo - 1` varchar(50) NULL,
	`Violation Description - 2` varchar(50) NULL,
	`Violation Points - 2` int(10) NULL,
	`Violation Detail - 2` varchar(50) NULL,
	`Violation Memo - 2` varchar(50) NULL,
	`Violation Description - 3` varchar(50) NULL,
	`Violation Points - 3` int(10) NULL,
	`Violation Detail - 3` varchar(50) NULL,
	`Violation Memo - 3` varchar(50) NULL,
	`Violation Description - 4` varchar(50) NULL,
	`Violation Points - 4` int(10) NULL,
	`Violation Detail - 4` varchar(50) NULL,
	`Violation Memo - 4` varchar(50) NULL,
	`Violation Description - 5` varchar(50) NULL,
	`Violation Points - 5` int(10) NULL,
	`Violation Detail - 5` varchar(50) NULL,
	`Violation Memo - 5` varchar(50) NULL,
	`Violation Description - 6` varchar(50) NULL,
	`Violation Points - 6` int(10) NULL,
	`Violation Detail - 6` varchar(50) NULL,
	`Violation Memo - 6` varchar(50) NULL,
	`Violation Description - 7` varchar(50) NULL,
	`Violation Points - 7` int(10) NULL,
	`Violation Detail - 7` varchar(50) NULL,
	`Violation Memo - 7` varchar(50) NULL,
	`Violation Description - 8` varchar(50) NULL,
	`Violation Points - 8` int(10) NULL,
	`Violation Detail - 8` varchar(50) NULL,
	`Violation Memo - 8` varchar(50) NULL,
	`Violation Description - 9` varchar(50) NULL,
	`Violation Points - 9` int(10) NULL,
	`Violation Detail - 9` varchar(50) NULL,
	`Violation Memo - 9` varchar(50) NULL,
	`Violation Description - 10` varchar(50) NULL,
	`Violation Points - 10` int(10) NULL,
	`Violation Detail - 10` varchar(50) NULL,
	`Violation Memo - 10` varchar(50) NULL,
	`Violation Description - 11` varchar(50) NULL,
	`Violation Points - 11` int(10) NULL,
	`Violation Detail - 11` varchar(50) NULL,
	`Violation Memo - 11` varchar(50) NULL,
	`Violation Description - 12` varchar(50) NULL,
	`Violation Points - 12` int(10) NULL,
	`Violation Detail - 12` varchar(50) NULL,
	`Violation Memo - 12` varchar(50) NULL,
	`Violation Description - 13` varchar(50) NULL,
	`Violation Points - 13` int(10) NULL,
	`Violation Detail - 13` varchar(50) NULL,
	`Violation Memo - 13` varchar(50) NULL,
	`Violation Description - 14` varchar(50) NULL,
	`Violation Points - 14` int(10) NULL,
	`Violation Detail - 14` varchar(50) NULL,
	`Violation Memo - 14` varchar(50) NULL,
	`Violation Description - 15` varchar(50) NULL,
	`Violation Points - 15` int(10) NULL,
	`Violation Detail - 15` varchar(50) NULL,
	`Violation Memo - 15` varchar(50) NULL,
	`Violation Description - 16` varchar(50) NULL,
	`Violation Points - 16` int(10) NULL,
	`Violation Detail - 16` varchar(50) NULL,
	`Violation Memo - 16` varchar(50) NULL,
	`Violation Description - 17` varchar(50) NULL,
	`Violation Points - 17` int(10) NULL,
	`Violation Detail - 17` varchar(50) NULL,
	`Violation Memo - 17` varchar(50) NULL,
	`Violation Description - 18` varchar(50) NULL,
	`Violation Points - 18` int(10) NULL,
	`Violation Detail - 18` varchar(50) NULL,
	`Violation Memo - 18` varchar(50) NULL,
	`Violation Description - 19` varchar(50) NULL,
	`Violation Points - 19` int(10) NULL,
	`Violation Detail - 19` varchar(50) NULL,
	`Violation Memo - 19` varchar(50) NULL,
	`Violation Description - 20` varchar(50) NULL,
	`Violation Points - 20` int(10) NULL,
	`Violation Detail - 20` varchar(50) NULL,
	`Violation Memo - 20` varchar(50) NULL,
	`Violation Description - 21` varchar(50) NULL,
	`Violation Points - 21` int(10) NULL,
	`Violation Detail - 21` varchar(50) NULL,
	`Violation Memo - 21` varchar(50) NULL,
	`Violation Description - 22` varchar(50) NULL,
	`Violation Points - 22` int(10) NULL,
	`Violation Detail - 22` varchar(50) NULL,
	`Violation Memo - 22` varchar(50) NULL,
	`Violation Description - 23` varchar(50) NULL,
	`Violation Points - 23` int(10) NULL,
	`Violation Detail - 23` varchar(50) NULL,
	`Violation Memo - 23` varchar(50) NULL,
	`Violation Description - 24` varchar(50) NULL,
	`Violation Points - 24` int(10) NULL,
	`Violation Detail - 24` varchar(50) NULL,
	`Violation Memo - 24` varchar(50) NULL,
	`Violation Description - 25` varchar(50) NULL,
	`Violation Points - 25` int(10) NULL,
	`Violation Detail - 25` varchar(50) NULL,
	`Violation Memo - 25` varchar(50) NULL,
	CONSTRAINT `pk_DimViolation_ViolationID` PRIMARY KEY (`ViolationID`)
);

CREATE TABLE `FactDallas` (
	`FactID` int(10) NOT NULL,
	`RestID` int(10) NOT NULL,
	`LocID` int(10) NOT NULL,
	`InspID` int(10) NOT NULL,
	`ViolationID` int(10) NOT NULL,
	`Inspection_Score` int(10) NOT NULL,
	CONSTRAINT `pk_FactViolation_VID` PRIMARY KEY (`FactID`)
);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimInspection_FactDallas` FOREIGN KEY (`InspID`)
REFERENCES `DimInspection` (`InspID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimLocation_FactDallas` FOREIGN KEY (`LocID`)
REFERENCES `DimLocation` (`LocID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimRestaurant_FactDallas` FOREIGN KEY (`RestID`)
REFERENCES `DimRestaurant` (`RestID`);

ALTER TABLE `FactDallas` ADD CONSTRAINT `fk_DimViolation_FactDallas` FOREIGN KEY (`ViolationID`)
REFERENCES `DimViolation` (`ViolationID`);

