
urlfile= "https://raw.githubusercontent.com/YvirC/Academics/main/Stat%2011%20Final%20Project%20Files/IHME_USA_LE_COUNTY_RACE_ETHN_2000_2019_LT_2019_BOTH_Y2022M06D16.CSV"

life <- read.delim(urlfile, header=TRUE, sep=",")
life_filter <- life[life$age_name == "<1 year",]

# this first
life_filter <- life_filter[life_filter$location_name != "United States of America",]
life_filter <- life_filter[life_filter$location_name != "Alabama",]
life_filter <- life_filter[life_filter$location_name != "Alaska",]
life_filter <- life_filter[life_filter$location_name != "Arizona",]
life_filter <- life_filter[life_filter$location_name != "Arkansas",]
life_filter <- life_filter[life_filter$location_name != "California",]
life_filter <- life_filter[life_filter$location_name != "Colorado",]
life_filter <- life_filter[life_filter$location_name != "Connecticut",]
life_filter <- life_filter[life_filter$location_name != "Delaware",]
life_filter <- life_filter[life_filter$location_name != "Florida",]
life_filter <- life_filter[life_filter$location_name != "Georgia",]
life_filter <- life_filter[life_filter$location_name != "Hawaii",]
life_filter <- life_filter[life_filter$location_name != "Idaho",]
life_filter <- life_filter[life_filter$location_name != "Illinois",]
life_filter <- life_filter[life_filter$location_name != "Indiana",]
life_filter <- life_filter[life_filter$location_name != "Iowa",]
life_filter <- life_filter[life_filter$location_name != "Kansas",]
life_filter <- life_filter[life_filter$location_name != "Kentucky",]
life_filter <- life_filter[life_filter$location_name != "Louisiana",]
life_filter <- life_filter[life_filter$location_name != "Maine",]
life_filter <- life_filter[life_filter$location_name != "Maryland",]
life_filter <- life_filter[life_filter$location_name != "Massachusetts",]
life_filter <- life_filter[life_filter$location_name != "Michigan",]
life_filter <- life_filter[life_filter$location_name != "Minnesota",]
life_filter <- life_filter[life_filter$location_name != "Mississippi",]
life_filter <- life_filter[life_filter$location_name != "Missouri",]
life_filter <- life_filter[life_filter$location_name != "Montana",]
life_filter <- life_filter[life_filter$location_name != "Nebraska",]
life_filter <- life_filter[life_filter$location_name != "Nevada",]
life_filter <- life_filter[life_filter$location_name != "New Hampshire",]
life_filter <- life_filter[life_filter$location_name != "New Jersey",]
life_filter <- life_filter[life_filter$location_name != "New Mexico",]
life_filter <- life_filter[life_filter$location_name != "New York",]
life_filter <- life_filter[life_filter$location_name != "North Carolina",]
life_filter <- life_filter[life_filter$location_name != "North Dakota",]
life_filter <- life_filter[life_filter$location_name != "Ohio",]
life_filter <- life_filter[life_filter$location_name != "Oklahoma",]
life_filter <- life_filter[life_filter$location_name != "Oregon",]
life_filter <- life_filter[life_filter$location_name != "Pennsylvania",]
life_filter <- life_filter[life_filter$location_name != "Rhode Island",]
life_filter <- life_filter[life_filter$location_name != "South Carolina",]
life_filter <- life_filter[life_filter$location_name != "South Dakota",]
life_filter <- life_filter[life_filter$location_name != "Tennessee",]
life_filter <- life_filter[life_filter$location_name != "Texas",]
life_filter <- life_filter[life_filter$location_name != "Utah",]
life_filter <- life_filter[life_filter$location_name != "Vermont",]
life_filter <- life_filter[life_filter$location_name != "Virginia",]
life_filter <- life_filter[life_filter$location_name != "Washington",]
life_filter <- life_filter[life_filter$location_name != "West Virginia",]
life_filter <- life_filter[life_filter$location_name != "Wisconsin",]
life_filter <- life_filter[life_filter$location_name != "Wyoming",]

boxplot(life_filter$val ~ race_name, data = life_filter, xlab = "Racial Groups", ylab = "Expected Life Expectancy at Birth")

life_filter$race_name <- factor(life_filter$race_name, levels = c("AIAN", "Black", "Mean", "White", "Latino", "API"))

boxplot(life_filter$val ~ race_name, data = life_filter, xlab = "Racial Groups", ylab = "Expected Remaining Life at Ages 75-79")

anova_result <- aov(val~race_name, data = life_filter)

summary(anova_result)

################ Break

life <- read.delim(urlfile, header=TRUE, sep=",")
life_filter <- life[life$age_name == "75 to 79",]

# this second
life_filter <- life_filter[life_filter$location_name != "United States of America",]
life_filter <- life_filter[life_filter$location_name != "Alabama",]
life_filter <- life_filter[life_filter$location_name != "Alaska",]
life_filter <- life_filter[life_filter$location_name != "Arizona",]
life_filter <- life_filter[life_filter$location_name != "Arkansas",]
life_filter <- life_filter[life_filter$location_name != "California",]
life_filter <- life_filter[life_filter$location_name != "Colorado",]
life_filter <- life_filter[life_filter$location_name != "Connecticut",]
life_filter <- life_filter[life_filter$location_name != "Delaware",]
life_filter <- life_filter[life_filter$location_name != "Florida",]
life_filter <- life_filter[life_filter$location_name != "Georgia",]
life_filter <- life_filter[life_filter$location_name != "Hawaii",]
life_filter <- life_filter[life_filter$location_name != "Idaho",]
life_filter <- life_filter[life_filter$location_name != "Illinois",]
life_filter <- life_filter[life_filter$location_name != "Indiana",]
life_filter <- life_filter[life_filter$location_name != "Iowa",]
life_filter <- life_filter[life_filter$location_name != "Kansas",]
life_filter <- life_filter[life_filter$location_name != "Kentucky",]
life_filter <- life_filter[life_filter$location_name != "Louisiana",]
life_filter <- life_filter[life_filter$location_name != "Maine",]
life_filter <- life_filter[life_filter$location_name != "Maryland",]
life_filter <- life_filter[life_filter$location_name != "Massachusetts",]
life_filter <- life_filter[life_filter$location_name != "Michigan",]
life_filter <- life_filter[life_filter$location_name != "Minnesota",]
life_filter <- life_filter[life_filter$location_name != "Mississippi",]
life_filter <- life_filter[life_filter$location_name != "Missouri",]
life_filter <- life_filter[life_filter$location_name != "Montana",]
life_filter <- life_filter[life_filter$location_name != "Nebraska",]
life_filter <- life_filter[life_filter$location_name != "Nevada",]
life_filter <- life_filter[life_filter$location_name != "New Hampshire",]
life_filter <- life_filter[life_filter$location_name != "New Jersey",]
life_filter <- life_filter[life_filter$location_name != "New Mexico",]
life_filter <- life_filter[life_filter$location_name != "New York",]
life_filter <- life_filter[life_filter$location_name != "North Carolina",]
life_filter <- life_filter[life_filter$location_name != "North Dakota",]
life_filter <- life_filter[life_filter$location_name != "Ohio",]
life_filter <- life_filter[life_filter$location_name != "Oklahoma",]
life_filter <- life_filter[life_filter$location_name != "Oregon",]
life_filter <- life_filter[life_filter$location_name != "Pennsylvania",]
life_filter <- life_filter[life_filter$location_name != "Rhode Island",]
life_filter <- life_filter[life_filter$location_name != "South Carolina",]
life_filter <- life_filter[life_filter$location_name != "South Dakota",]
life_filter <- life_filter[life_filter$location_name != "Tennessee",]
life_filter <- life_filter[life_filter$location_name != "Texas",]
life_filter <- life_filter[life_filter$location_name != "Utah",]
life_filter <- life_filter[life_filter$location_name != "Vermont",]
life_filter <- life_filter[life_filter$location_name != "Virginia",]
life_filter <- life_filter[life_filter$location_name != "Washington",]
life_filter <- life_filter[life_filter$location_name != "West Virginia",]
life_filter <- life_filter[life_filter$location_name != "Wisconsin",]
life_filter <- life_filter[life_filter$location_name != "Wyoming",]

boxplot(life_filter$val ~ race_name, data = life_filter, xlab = "Racial Groups", ylab = "Expected Life Expectancy at Birth")

life_filter$race_name <- factor(life_filter$race_name, levels = c("AIAN", "Black", "Mean", "White", "Latino", "API"))

boxplot(life_filter$val ~ race_name, data = life_filter, xlab = "Racial Groups", ylab = "Expected Remaining Life at Ages 75-79")

anova_result <- aov(val~race_name, data = life_filter)

summary(anova_result)
