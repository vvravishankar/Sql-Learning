-- SQL GETDATE() function returns the current database system date and time in the format ‘YYYY-MM-DD hh:mm: ss. mmm’.
	SELECT GetDate() AS 'CurrentDATETime';

--Get Only Time Part from GETDATE() Function Example
	SELECT CONVERT(VARCHAR(8), GETDATE(),108)'hh:mi:ss'
	
--SQL CURRENT_TIMESTAMP() function used to find the current TIMESTAMP (current Date and Time). The CURRENT_TIMESTAMP returns the same result as GETDATE(). 

	SELECT CURRENT_TIMESTAMP AS "CURRENTTIMESTAMP"; 
	
--SQL SYSDATETIME() function is also used to get the current time of the System on which the instance of SQL Server is running. SYSDATETIME() function provides more fractional seconds precision compared to the GETDATE() function.

	SELECT SYSDATETIME() as 'Current TIME using SYSDATETIME()'
	
-- Below are the date functions that are used in SQL:

--ADDDATE(): It returns a date after a certain time/date interval has been added.
 SELECT ADDDATE("2018-07-16 02:52:47", "2");

--ADDTIME(): It returns a time / date time after a certain time interval has been added.
 SELECT ADDTIME("2017-06-15 09:34:21", "2");

--CURDATE(): It returns the current date.
 SELECT CURDATE();

--CURRENT_DATE(): It returns the current date.
 SELECT CURRENT_DATE();

--CURRENT_TIME(): It returns the current time.
 SELECT CURRENT_TIME();

-- CURRENT_TIMESTAMP(): It returns the current date and time.
 SELECT CURRENT_TIMESTAMP();

-- CURTIME(): It returns the current time.
 SELECT CURTIME();
 
-- DATE(): It extracts the date value from a date or date time expression.
 SELECT DATE("2017-06-15");

-- DATEDIFF(): It returns the difference in days between two date values.
 SELECT DATEDIFF("2017-06-25", "2017-06-15");
Output: 10

-- DATE_ADD(): It returns a date after a certain time/date interval has been added.
 SELECT DATE_ADD("2018-07-16", INTERVAL 10 DAY);
Output: 2018-07-16

-- DATE_FORMAT(): It formats a date as specified by a format mask.
 SELECT DATE_FORMAT("2018-06-15", "%Y");
Output: 2018

-- DATE_SUB(): It returns a date after a certain time/date interval has been subtracted.
 SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY);
Output: 2018-07-16

-- DAY(): It returns the day portion of a date value.
 SELECT DAY("2018-07-16");
Output: 16

-- DAYNAME(): It returns the weekday name for a date.
 SELECT DAYNAME('2008-05-15');
Output: Thursday

-- DAYOFMONTH(): It returns the day portion of a date value.
 SELECT DAYOFMONTH('2018-07-16');
Output: 16

-- DAYWEEK(): It returns the weekday index for a date value.
 SELECT WEEKDAY("2018-07-16");
Output: 0

--DAYOFYEAR(): It returns the day of the year for a date value.
 SELECT DAYOFYEAR("2018-07-16");
Output: 197

--EXTRACT(): It extracts parts from a date.
 SELECT EXTRACT(MONTH FROM "2018-07-16");
Output: 7

--FROM_DAYS(): It returns a date value from a numeric representation of the day.
 SELECT FROM_DAYS(685467);
Output: 1876-09-29

--HOUR(): It returns the hour portion of a date value.
 SELECT HOUR("2018-07-16 09:34:00");
Output: 9

--LAST_DAY(): It returns the last day of the month for a given date.
 SELECT LAST_DAY('2018-07-16');
Output: 2018-07-31

--LOCALTIME(): It returns the current date and time.
 SELECT LOCALTIME();
Output: 2018-07-16 02:56:42

--LOCALTIMESTAMP(): It returns the current date and time.
 SELECT LOCALTIMESTAMP();
Output: 2018-07-16 02:56:48

--MAKEDATE(): It returns the date for a certain year and day-of-year value.
 SELECT MAKEDATE(2009, 138);
Output: 2009-05-18

--MAKETIME(): It returns the time for a certain hour, minute, second combination.
 SELECT MAKETIME(11, 35, 4);
Output: 11:35:04