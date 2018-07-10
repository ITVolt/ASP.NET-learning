IF(OBJECT_ID(N'contest_participations', N'U') IS NULL)
BEGIN
	CREATE TABLE contest_participations(
	user_id INT  NOT NULL,
	contest_id INT NOT NULL,
	score INT,
	placement INT CHECK(placement > 0),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (contest_id) REFERENCES contests(id),
	PRIMARY KEY (user_id, contest_id)) 
END;


