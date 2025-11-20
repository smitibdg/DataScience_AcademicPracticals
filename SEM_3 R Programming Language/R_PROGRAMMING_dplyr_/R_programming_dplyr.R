library(dplyr)

getwd()
setwd("C:/Users/Muthu Mobiles/Desktop/R studio/R_programming_dplyr_")

data <- read.csv("product_data.csv")
data

#1. Display the records except price and quantity
select(data, -c(Product_price,qty))
#2.Display the records ends_with "y"
select(data, ends_with("y"))
#3. Display the records starts_with "c"
select(data, starts_with("c"))
#4. DIsplay the quantity greater than 100
qty_f <- filter(data, qty > 100)
qty_f
#5.Display the record quantity in descending order
arr_qty_desc <- arrange(data, desc(qty))
arr_qty_desc
#6.Display the records in ascending order
arr_qty_asc <- arrange(data, qty)
arr_qty_asc
#7.Display the first 6 records 
head(select(data,c(Product_ID:category )),6)
#8.Display the last 6 records 
tail(select(data,c(Product_ID:category)),6)
#9.Renaming the column name
name_change <- rename(data,  product_qty=qty)
name_change
#10.Caluculating the total cost using mutate function
mutate_data <- mutate(data, Total_price = Product_price*qty)
mutate_data
#11.Calcuulating the total cost using transmute function
trans_mute <- transmute(data, Total_price = Product_price*qty)
trans_mute
#12.Slicing the data 
sliced <- slice(data, -c(2:6))
sliced
#13.Remove duplicate row
Unique_records <- unique(data, incomparables = FALSE)
Unique_records
#14.Display any random 4 records
random_data = sample_n(data,4)
random_data
#15.Display random 50% of the given dataset
half_random_data = sample_frac(data,0.60)
half_random_data
#16 Find out total product in each category
grp_prod <- data %>% group_by(category) %>% count(category)
grp_prod
#17 find max and min price of product for each category
summ_prod <- data %>% group_by(category) %>%summarise(max_price = max(Product_price), min_price = min(Product_price))
summ_prod
#18display the product details which has the maximum price
max_price <- slice_max(data,order_by = Product_price)
max_price
