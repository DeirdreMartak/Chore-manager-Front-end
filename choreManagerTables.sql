CREATE TABLE people (
	member_id INT NOT NULL auto_increment, 
    full_name varchar(50) NOT NULL UNIQUE,
    
    CONSTRAINT member_pk PRIMARY KEY(member_id)
);

CREATE TABLE chores (
	chore_id INT NOT NULL auto_increment, 
    chore_name VARCHAR(50) NOT NULL, 
    description_text VARCHAR(150),
    chore_date DATE,
    member_id INT,
    progress ENUM('Incomplete', 'Completed', 'Overdue') NOT NULL DEFAULT 'Incomplete',
    
    CONSTRAINT chore_pk PRIMARY KEY(chore_id),
    CONSTRAINT member_fk FOREIGN KEY(member_id) REFERENCES people(member_id)
);