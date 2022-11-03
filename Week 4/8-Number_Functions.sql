

-- Numeric Functions: 
-- used for numeric manipulation or calculation

##########
#  CEIL  #
##########

-- rounds a number up to the next whole number

select ceil(10.01) from dual;

###########
#  FLOOR  #
###########

-- rounds a number down to the next whole number

select floor(19.99999) from dual;

#########
#  POW  #
#########

-- gets the power of a number

select pow(2,5) from dual;

##############
#  GREATEST  #
##############

-- get the biggest value out of a list of values passed to it

select greatest(4,9,5,0,2) from dual;

-- cannot pass a whole column to greatest, must be a list of values, will
-- get an error if you do
select greatest(rental_rate) from film;
