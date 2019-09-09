DROP TABLE IF EXISTS accidents_table;
DROP TABLE IF EXISTS unemployment_table;

--Create new tables to hold csv files
--Variables in quotes to match capitalization in CSV
CREATE TABLE accidents_table (
    "Unique_Id" int NOT NULL,
    "DistrictName" varchar NOT NULL,
	"NeighborhoodName" varchar NOT NULL,
	"Month" varchar NOT NULL,
	"Day" int NOT NULL,
	"Hour" int NOT NULL,
	"MildInjuries" int NOT NULL,
	"SeriousInjuries" int NOT NULL,
	"Victims" int NOT NULL,
	"VehicleInvolved" int NOT NULL,
    CONSTRAINT pk_accidents_table PRIMARY KEY (
        "Unique_Id"
     )
);

CREATE TABLE unemployment_table (
    "Unique_Id" INT NOT NULL,
    "DistrictName" VARCHAR NOT NULL,
    "Year" int NOT NULL,
    "Month" varchar NOT NULL,
	"NeighborhoodName" varchar NOT NULL,
	"Demand_occupation" varchar NOT NULL,
	"Number" int NOT NULL,
	CONSTRAINT pk_unemployment_table PRIMARY KEY (
		"Number"
	)
);

--Add foreign key references to all tables

ALTER TABLE unemployment_table ADD CONSTRAINT fk_unemployment_table_Unique_Id FOREIGN KEY(Unique_Id)
REFERENCES accidents_table (Unique_Id);


--Test table info (troubleshooting error listed above)
SELECT * FROM accidents_table;
SELECT * FROM unemployment_table;
