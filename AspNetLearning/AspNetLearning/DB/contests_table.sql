IF(OBJECT_ID(N'contests', N'U') IS NULL)
	BEGIN
		CREATE TABLE contests
			( id INT IDENTITY PRIMARY KEY NOT NULL,
			name VARCHAR(200) NOT NULL,
			date DATETIME,
			food_item VARCHAR(200) NOT NULL,
			location VARCHAR(200)
			)
	END;
	

