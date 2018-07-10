IF(OBJECT_ID(N'users', N'U') IS NULL)
BEGIN
	CREATE TABLE users (
		id INT IDENTITY(1,1) PRIMARY KEY,
		alias VARCHAR(255) NOT NULL,
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		email VARCHAR(255),
		registration_date DATETIME NOT NULL,
		last_active DATETIME
	)
END;

IF(OBJECT_ID(N'contests', N'U') IS NULL)
BEGIN
	CREATE TABLE contests (
		id INT IDENTITY PRIMARY KEY NOT NULL,
		name VARCHAR(200) NOT NULL,
		date DATETIME,
		food_item VARCHAR(200) NOT NULL,
		location VARCHAR(200)
	)
END;

IF(OBJECT_ID(N'contest_participations', N'U') IS NULL)
BEGIN
	CREATE TABLE contest_participations (
		user_id INT  NOT NULL,
		contest_id INT NOT NULL,
		score INT,
		placement INT CHECK(placement > 0),
		FOREIGN KEY (user_id) REFERENCES users(id),
		FOREIGN KEY (contest_id) REFERENCES contests(id)
	) 
END;