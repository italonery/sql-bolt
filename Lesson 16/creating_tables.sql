/*
    Create a new table named Database with the following columns:
    – Name A string (text) describing the name of the database
    – Version A number (floating point) of the latest version of this database
    – Download_count An integer count of the number of times this database was downloaded

    This table has no constraints.

    If you want to test, can you use this:

    CREATE TABLE database(
      name VARCHAR(20) NOT NULL,
      version FLOAT NOT NULL,
      download_count INTEGER
    );
*/

CREATE TABLE database(
  name TEXT,
  version FLOAT,
  download_count INTEGER
);
