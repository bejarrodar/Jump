-- String Functions:
-- used mostly for string manipulation

###########
#  ASCII  #
###########

-- ASCII is a character encoding standard that assigns certain characters a numeric value
-- the ASCII function returns the numeric value of the character given

-- the capital and lowercase versions of a letter will have different ascii values
select ascii('c'), ascii('C');

-- dual is a dummy table used when there needs to be a table specified in your select
-- statement, though it is not necessary in MySQL, in other sql versions like Oracle,
-- it is needed
select ascii('c'), ascii('C') from dual;


############
#  CONCAT  #
############
-- will concatinate (put together) two or more strings

-- put full name of the staff in one column
select concat(first_name, ' ', last_name) as 'full name' from staff;


############
#  LENGTH  #
############
-- will count the length of a string

-- find the character length of each country in the country table
select country, length(country) from country;


###########
#  UPPER  #
###########
-- change the string so it is uppercase

-- try making a word uppercase
select upper('lowercase') from dual;


############
#  SUBSTR  #
############

-- gets the substring of a given string
-- first parameter: string 
-- second parameter: at what index to start
-- third parameter: how many characters long is the substring 

-- try out substr function
select substr('1234567', 3, 2) from dual;

-- the third parameter for the length is optional, if not given, goes till end
select substr('1234567', 3) from dual;

