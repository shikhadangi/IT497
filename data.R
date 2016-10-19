### Start usBirthData Code#######
install.packages("rvest")
library("rvest")
usBirthData <- read_html("https://www.ssa.gov/oact/babynames/numberUSbirths.html")
usBirthData <- html_table(
  html_node(
    usBirthData, "table.border"
  ), header=TRUE
)
names(usBirthData) <- c("Year", "Female", "Male", "Total")
### End usBirthData Code #######
