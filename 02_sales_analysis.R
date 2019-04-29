# DS4B 101-R: R FOR BUSINESS ANALYSIS ----
# JUMPSTART ----

# 1.0 Load libraries ----

# Work horse packages
#install.packages("tidyverse")
#install.packages("lubridate")
library(tidyverse)
library(lubridate)

# theme_tq()
#install.packages("tidyquant")
library(tidyquant)

# Excel Files
#install.packages("readxl")
#install.packages("writexl")
library(readxl)
library(writexl)




# 2.0 Importing Files ----
bikes_tbl <- read_excel("bikes.xlsx")

bikeshops_tbl <- read_excel("bikeshops.xlsx")

orderlines_tbl <- read_excel("orderlines.xlsx")
# 3.0 Examining Data ----
bikes_tbl

orderlines_tbl %>% glimpse()


# 4.0 Joining Data ----
left_join(orderlines_tbl, bikes_tbl, by = c("product.id"="bike.id"))

orderlines_tbl %>% left_join(bikes_tbl, by = c("product.id" = "bike.id")) %>% 
                   left_join(bikeshops_tbl, by = c("customer.id" = "bikeshop.id"))


bikes_orderlines_joined_tbl<-orderlines_tbl %>% left_join(bikes_tbl, by = c("product.id" = "bike.id")) %>% 
    left_join(bikeshops_tbl, by = c("customer.id" = "bikeshop.id"))

bikes_orderlines_joined_tbl

# 5.0 Wrangling Data ----





# 6.0 Business Insights ----


# 6.1 Sales by Year ----

# Step 1 - Manipulate




# Step 2 - Visualize



# 6.2 Sales by Year and Category 2 ----


# Step 1 - Manipulate




# Step 2 - Visualize




# 7.0 Writing Files ----


# 7.1 Excel ----


# 7.2 CSV ----


# 7.3 RDS ----