PostgreSQL is an advanced, enterprise-class, and open-source relational database system.
         PostgreSQL supports both SQL (relational) and JSON (non-relational) querying.   --started in 1986

         languages it supports
         java, sql, python, Javascript(NOdeJs), C#, C/C+, Ruby, Perl, Go, Tcl
         
-- below is a cheetsheet for postgresql
-- https://www.postgresqltutorial.com/postgresql-cheat-sheet/

-- simple commands

-- Access the PostgreSQL server from psql with a specific user:  => psql -U [username];
-- Connect to a specific database:   => \c database_name;
-- to quit postgresql run => \q
-- List all databases in the PostgreSQL database server  => \l
-- List all schemas:  => \dn
-- List all stored procedures and functions:  => \df
-- List all views:  =>dv
-- Lists all tables in a current database.  => \dt
-- Or to get more information on tables in the current database:  => \dt+
-- Get detailed information on a table.   => \d+ table_name
-- Show a stored procedure or function code:  => \df+ function_name
-- Show query output in the pretty-format: => \x
-- List all users:   => \du
-- Create a new role:  => CREATE ROLE role_name;
-- Create a new role with a username and password:  => CREATE ROLE username NOINHERIT LOGIN PASSWORD password;
-- Change role for the current session to the new_role: => SET ROLE new_role;
-- Allow role_1 to set its role as role_2:  => GRANT role_2 TO role_1;