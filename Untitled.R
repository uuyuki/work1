a <- 10
b <- 20
c <- 30
install.packages(c("car", "ggplot2"))
library(car)
car::scatterplot(mpg ~ disp, 
                 data = mtcars)
library(ggplot2)
my_plot <- ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  theme_minimal()

plotly::ggplotly(my_plot)


st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")

st_joe_land <- read.csv(file = "stJoeLand.csv")

install.packages(c("readr", "data.table"))


st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")

names(st_joe_land_datatable)[names(st_joe_land_datatable) == "Zip Code"] <- 
  "Zip_Code"
install.packages("readxl")
st_joe_land_excel <- readxl::read_excel(path = "stJoeLand.xlsx")
save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")

st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")
st_joe_land <- read.csv(file = "stJoeLand.csv")

save(st_joe_land, st_joe_land_datatable, file = "stJoeInfo.RData")
