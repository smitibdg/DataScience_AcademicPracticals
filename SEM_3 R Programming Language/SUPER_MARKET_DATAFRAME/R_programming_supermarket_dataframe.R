# creating dataframe for supermarket data
Super_market <- data.frame(Cus_id = c(01,02,03,04,05,06,07,08,09,10,11,12,13,14,15),
                     
                     Gender = c("Male", "Female","Male","Male","Female","Female","Male","Female","Female","Male","Female","Male","Female","Female","Male"),
                     
                     Cus_type = c("Vip","Normal","Vip","Normal","Normal","Vip","Normal","Vip","Normal","Vip","Normal","Normal","Vip","Normal","Normal"),
                     
                     Payment_Mode = c("E_wallet","cash","cash","cash","E_wallet","E_wallet","cash","cash","","cash","cash","E_wallet","cash","cash","E_wallet"),
                     
                     Product=c("Electronics","Sports & Travels", "Fashion","Cosmetics","Dairy_products","Electronics","Sports & Travels", "Fashion","Cosmetics","Dairy_products","Electronics","Sports & Travels", "Fashion","Cosmetics","Dairy_products"),
                     
                     Expenditure = c(200,120,170,190,250,100,140,70,150,110,180,115,175,185,130),
                     
                     Payment_date= c('2019-04-01','2019-04-01','2019-04-01','2019-04-02','2019-04-02','2019-04-02','2019-04-02','2019-04-02','2019-04-03','2019-04-03','2019-04-04','2019-04-04','2019-04-04','2019-04-05','2019-04-06'),
                     
                     Ratings = c(5,6,4,7,8,2,5,8,1,10,9,10,9,7,7),
                     
                     City=c("Mumbai","Delhi", "Pune","Mumbai","Mumbai","Banglore","Mumbai","Pune","Gujarat","Bengal","Mumbai","Mumbai","Delhi","Gujarat","Pune"),
                     
                     Branch = c("Mumbai","Delhi","Mumbai","Mumbai","Delhi","Mumbai","Delhi","Delhi","Mumbai","Delhi","Delhi","Mumbai","Mumbai","Delhi","Mumbai"))
                     
#viewing the dataframe
View(Super_market)                    

# Display the "VIP" customers who"s payment mode is E_Wallet                    
Question1 <- subset(Super_market,Cus_type=="Vip" & Payment_Mode=="E_wallet",select = c(Cus_id,Cus_type,Payment_Mode))
Question1

#Display the "NORMAL" customers who's expenditure is greater than 150
Question2 <- subset(Super_market,Cus_type=="Normal" & Expenditure > 150, select = c(Cus_id,Cus_type,Expenditure))
Question2

#Display the "VIP" customers who payed after date 1at april
Question3 <- subset(Super_market,Cus_type=="Vip" & Payment_date>as.Date("2019-04-01"),select = c(Cus_id,Cus_type,Payment_date))
Question3

# Display the records where the city is mumbai
Question4 <- subset(Super_market,City=="Mumbai")
Question4

#Display the records where the ratings is greater than 8
Question5<- subset(Super_market,Ratings > 8,select = c(Branch,Ratings))
Question5

#Display the records where the product is either "Electronics" or "Sports&Travel" orelse "Fashion"
Question6 <- subset(Super_market,Product=="Electronics" |Product=="Sports&Travel" |Product== "Fashion",)
Question6

#Display the Female "VIP" customers
Question7 <- subset(Super_market,Cus_type=="Vip" & Gender=="Female")
Question7

