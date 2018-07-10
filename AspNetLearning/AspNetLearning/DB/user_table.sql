IF NOT EXISTS
		(  SELECT [name] 
		   FROM sys.tables
		   WHERE [name] = 'users'
		)
	BEGIN
		CREATE TABLE users (
			id INT IDENTITY(1,1) PRIMARY KEY,
			alias VARCHAR(255) NOT NULL,
			first_name VARCHAR(255),
			last_name VARCHAR(255),
			email VARCHAR(255),
			registration_date DATETIME NOT NULL,
			last_active DATETIME
		);
	END;