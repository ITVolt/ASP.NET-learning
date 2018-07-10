IF OBJECT_ID(N'aspnet_learning#competitions', N'U') is NULL
BEGIN
CREATE TABLE competitions 
( id INT IDENTITY PRIMARY KEY NOT NULL,
	name VARCHAR(200) NOT NULL,
	date DATETIME,
	food_item VARCHAR(200) NOT NULL,
	location VARCHAR(200)
	)
	END
	

