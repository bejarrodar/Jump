-- Date Functions:
-- used to manipulate dates

#############
#  ADDDATE  #
#############

-- adds a number of days to a specified date

-- find what date it was 100 days after July 19, 1996
select adddate('1996-07-19', 100) from dual;


##############
#  LAST_DAY  #
##############

-- returns the last day of the month of the date given

-- find the last day of the month for July 19, 1996
select last_day('1996-07-19') from dual;


##################
#  CURRENT_DATE  #
##################

-- gets today's date

select current_date() from dual;


#############
#  EXTRACT  #
#############

-- extracts a part from a given date such as:
-- -- MICROSECOND
-- -- SECOND
-- -- MINUTE
-- -- HOUR
-- -- DAY
-- -- WEEK
-- -- MONTH
-- -- QUARTER
-- -- YEAR
-- -- SECOND_MICROSECOND
-- -- MINUTE_MICROSECOND
-- -- MINUTE_SECOND
-- -- HOUR_MICROSECOND
-- -- HOUR_SECOND
-- -- HOUR_MINUTE
-- -- DAY_MICROSECOND
-- -- DAY_SECOND
-- -- DAY_MINUTE
-- -- DAY_HOUR
-- -- YEAR_MONTH

-- extract month
select extract(month from current_date()) from dual;

-- extract week
select extract(week from current_date()) from dual;

-- extract hour and minute
select extract(hour_minute from current_time()) from dual;