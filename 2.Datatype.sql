/*
1. Numeric Data Types
	INT, INTEGER: A whole number, typically used for storing counts, IDs, etc. (e.g., INT(11)).
	TINYINT: A very small integer (-128 to 127 or 0 to 255).
	SMALLINT: A small integer (-32,768 to 32,767 or 0 to 65,535).
	MEDIUMINT: A medium-sized integer (-8,388,608 to 8,388,607 or 0 to 16,777,215).
	BIGINT: A large integer (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807).
	FLOAT: A floating-point number with 4 bytes of storage.
	DOUBLE: A floating-point number with 8 bytes of storage.
	DECIMAL, NUMERIC: Fixed-point numbers where precision and scale can be defined (e.g., DECIMAL(10,2) for numbers up to 99999999.99).

2. String Data Types
	CHAR: A fixed-length string (e.g., CHAR(10)).
	VARCHAR: A variable-length string (e.g., VARCHAR(255)).
	TEXT: A string with a maximum length of 65,535 characters.
	MEDIUMTEXT: A string with a maximum length of 16,777,215 characters.
	LONGTEXT: A string with a maximum length of 4,294,967,295 characters.

3. Date and Time Data Types
	DATE: Stores date values (e.g., YYYY-MM-DD).
	TIME: Stores time values (e.g., HH:MM:SS).
	DATETIME: Stores both date and time values (e.g., YYYY-MM-DD HH:MM:SS).
	TIMESTAMP: Stores both date and time values, typically used for tracking changes (e.g., YYYY-MM-DD HH:MM:SS).
	YEAR: Stores a year value in a 2-digit or 4-digit format (e.g., YEAR(4)).

4. Binary Data Types
	BINARY: Fixed-length binary data.
	VARBINARY: Variable-length binary data.
	BLOB: Binary Large Object, for storing large binary data such as images or files.
	MEDIUMBLOB: A medium-length binary large object.
	LONGBLOB: A large-length binary large object.

5. Miscellaneous Data Types
	BOOLEAN: Typically represented as TINYINT (0 for false, 1 for true).
	ENUM: A string object that can have one value chosen from a list of allowed values (e.g., ENUM('small', 'medium', 'large')).
	SET: A string object that can have zero or more values chosen from a list of allowed values (e.g., SET('a', 'b', 'c')).
	
*/	
CREATE TABLE ExampleTable (
    id INT AUTO_INCREMENT PRIMARY KEY,            -- Integer (Primary Key)
    name VARCHAR(100) NOT NULL,                   -- Variable-length string
    age TINYINT,                                  -- Tiny integer
    salary DECIMAL(10, 2),                        -- Decimal number
    join_date DATE,                               -- Date
    last_login TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp
    profile_picture BLOB,                         -- Binary Large Object
    is_active BOOLEAN,                            -- Boolean
    rating FLOAT,                                 -- Floating-point number
    description TEXT,                             -- Text
    preferences ENUM('Low', 'Medium', 'High')     -- Enumeration
);


INSERT INTO ExampleTable (name, age, salary, join_date, profile_picture, is_active, rating, description, preferences)
VALUES (
    'John Doe',          -- VARCHAR
    28,                  -- TINYINT
    75000.50,            -- DECIMAL
    '2023-05-28',        -- DATE
    NULL,                -- BLOB (NULL for now, typically would be binary data)
    TRUE,                -- BOOLEAN
    4.5,                 -- FLOAT
    'Experienced developer with a strong background in Python and SQL.', -- TEXT
    'High'               -- ENUM
);
