# Set working directory
setwd("/Users/pujasharma/Downloads/OVERALL_beta_lambda_vcmax")
library(lubridate)
library(dplyr)
library(ggplot2)
# Create a vector of file names
file_names <- c(
  "output_file_vmax-P1-6.40.csv",
  "output_file_vmax-P1-9.18.csv",
  "output_file_vmax-P1-11.42.csv",
  "output_file_vmax-P1-12.33.csv",
  "output_file_vmax-P1-15.41.csv",
  "output_file_vmax-P1-17.02.csv",
  "output_file_vmax-P1-19.93.csv",
  "output_file_vmax-P1-21.48.csv",
  "output_file_vmax-P1-23.48.csv",
  "output_file_vmax-P1-26.46.csv",
  "output_file_vmax-P1-27.40.csv",
  "output_file_vmax-P1-28.33.csv",
  "output_file_vmax-P1-30.46.csv",
  "output_file_vmax-P1-32.34.csv",
  "output_file_vmax-P1-35.46.csv",
  "output_file_vmax-P1-37.41.csv",
  "output_file_vmax-P1-40.36.csv",
  "output_file_vmax-P1-41.31.csv",
  "output_file_vmax-P1-43.38.csv",
  "output_file_vmax-P1-46.59.csv",
  "output_file_vmax-P1-49.86.csv",
  "output_file_vmax-P2-6.40.csv",
  "output_file_vmax-P2-9.18.csv",
  "output_file_vmax-P2-11.42.csv",
  "output_file_vmax-P2-12.33.csv",
  "output_file_vmax-P2-15.41.csv",
  "output_file_vmax-P2-17.02.csv",
  "output_file_vmax-P2-19.93.csv",
  "output_file_vmax-P2-21.48.csv",
  "output_file_vmax-P2-23.48.csv",
  "output_file_vmax-P2-26.46.csv",
  "output_file_vmax-P2-27.40.csv",
  "output_file_vmax-P2-28.33.csv",
  "output_file_vmax-P2-30.46.csv",
  "output_file_vmax-P2-32.34.csv",
  "output_file_vmax-P2-35.46.csv",
  "output_file_vmax-P2-37.41.csv",
  "output_file_vmax-P2-40.36.csv",
  "output_file_vmax-P2-41.31.csv",
  "output_file_vmax-P2-43.38.csv",
  "output_file_vmax-P2-46.59.csv",
  "output_file_vmax-P2-49.86.csv",
  "output_file_vmax-P9-6.40.csv",
  "output_file_vmax-P9-9.18.csv",
  "output_file_vmax-P9-11.42.csv",
  "output_file_vmax-P9-12.33.csv",
  "output_file_vmax-P9-15.41.csv",
  "output_file_vmax-P9-17.02.csv",
  "output_file_vmax-P9-19.93.csv",
  "output_file_vmax-P9-21.48.csv",
  "output_file_vmax-P9-23.48.csv",
  "output_file_vmax-P9-26.46.csv",
  "output_file_vmax-P9-27.40.csv",
  "output_file_vmax-P9-28.33.csv",
  "output_file_vmax-P9-30.46.csv",
  "output_file_vmax-P9-32.34.csv",
  "output_file_vmax-P9-35.46.csv",
  "output_file_vmax-P9-37.41.csv",
  "output_file_vmax-P9-40.36.csv",
  "output_file_vmax-P9-41.31.csv",
  "output_file_vmax-P9-43.38.csv",
  "output_file_vmax-P9-46.59.csv",
  "output_file_vmax-P9-49.86.csv",
  "output_file_vmax-P10-6.40.csv",
  "output_file_vmax-P10-9.18.csv",
  "output_file_vmax-P10-11.42.csv",
  "output_file_vmax-P10-12.33.csv",
  "output_file_vmax-P10-15.41.csv",
  "output_file_vmax-P10-17.02.csv",
  "output_file_vmax-P10-19.93.csv",
  "output_file_vmax-P10-21.48.csv",
  "output_file_vmax-P10-23.48.csv",
  "output_file_vmax-P10-26.46.csv",
  "output_file_vmax-P10-27.40.csv",
  "output_file_vmax-P10-28.33.csv",
  "output_file_vmax-P10-30.46.csv",
  "output_file_vmax-P10-32.34.csv",
  "output_file_vmax-P10-35.46.csv",
  "output_file_vmax-P10-37.41.csv",
  "output_file_vmax-P10-40.36.csv",
  "output_file_vmax-P10-41.31.csv",
  "output_file_vmax-P10-43.38.csv",
  "output_file_vmax-P10-46.59.csv",
  "output_file_vmax-P10-49.86.csv"
)

# Read each file into a list
data_list <- lapply(file_names, read.csv)

# Loop through data_list and assign each data frame with the file name
for (i in seq_along(data_list)) {
  assign(gsub(".csv", "", file_names[i]), data_list[[i]])
}

# Now you have data frames named after the file names, e.g., output_file_vmax-P1-6.40, output_file_vmax-P1-9.18, etc.
# You can access them using these names directly.

output_file_vmax_P1_P2_P9_P10_26.46 <- cbind(`output_file_vmax-P1-26.46`, `output_file_vmax-P2-26.46`, `output_file_vmax-P9-26.46`, `output_file_vmax-P10-26.46`)
output_file_vmax_P1_P2_P9_P10_40.36 <- cbind(`output_file_vmax-P1-40.36`, `output_file_vmax-P2-40.36`, `output_file_vmax-P9-40.36`, `output_file_vmax-P10-40.36`)
output_file_vmax_P1_P2_P9_P10_37.41 <- cbind(`output_file_vmax-P1-37.41`, `output_file_vmax-P2-37.41`, `output_file_vmax-P9-37.41`, `output_file_vmax-P10-37.41`)
output_file_vmax_P1_P2_P9_P10_32.34 <- cbind(`output_file_vmax-P1-32.34`, `output_file_vmax-P2-32.34`, `output_file_vmax-P9-32.34`, `output_file_vmax-P10-32.34`)
output_file_vmax_P1_P2_P9_P10_17.02 <- cbind(`output_file_vmax-P1-17.02`, `output_file_vmax-P2-17.02`, `output_file_vmax-P9-17.02`, `output_file_vmax-P10-17.02`)
output_file_vmax_P1_P2_P9_P10_15.41 <- cbind(`output_file_vmax-P1-15.41`, `output_file_vmax-P2-15.41`, `output_file_vmax-P9-15.41`, `output_file_vmax-P10-15.41`)
output_file_vmax_P1_P2_P9_P10_43.38 <- cbind(`output_file_vmax-P1-43.38`, `output_file_vmax-P2-43.38`, `output_file_vmax-P9-43.38`, `output_file_vmax-P10-43.38`)
output_file_vmax_P1_P2_P9_P10_11.42 <- cbind(`output_file_vmax-P1-11.42`, `output_file_vmax-P2-11.42`, `output_file_vmax-P9-11.42`, `output_file_vmax-P10-11.42`)
output_file_vmax_P1_P2_P9_P10_23.48 <- cbind(`output_file_vmax-P1-23.48`, `output_file_vmax-P2-23.48`, `output_file_vmax-P9-23.48`, `output_file_vmax-P10-23.48`)
output_file_vmax_P1_P2_P9_P10_35.46 <- cbind(`output_file_vmax-P1-35.46`, `output_file_vmax-P2-35.46`, `output_file_vmax-P9-35.46`, `output_file_vmax-P10-35.46`)
output_file_vmax_P1_P2_P9_P10_41.31 <- cbind(`output_file_vmax-P1-41.31`, `output_file_vmax-P2-41.31`, `output_file_vmax-P9-41.31`, `output_file_vmax-P10-41.31`)
output_file_vmax_P1_P2_P9_P10_21.48 <- cbind(`output_file_vmax-P1-21.48`, `output_file_vmax-P2-21.48`, `output_file_vmax-P9-21.48`, `output_file_vmax-P10-21.48`)
output_file_vmax_P1_P2_P9_P10_6.40 <- cbind(`output_file_vmax-P1-6.40`, `output_file_vmax-P2-6.40`, `output_file_vmax-P9-6.40`, `output_file_vmax-P10-6.40`)
output_file_vmax_P1_P2_P9_P10_12.33 <- cbind(`output_file_vmax-P1-12.33`, `output_file_vmax-P2-12.33`, `output_file_vmax-P9-12.33`, `output_file_vmax-P10-12.33`)
output_file_vmax_P1_P2_P9_P10_19.93 <- cbind(`output_file_vmax-P1-19.93`, `output_file_vmax-P2-19.93`, `output_file_vmax-P9-19.93`, `output_file_vmax-P10-19.93`)
output_file_vmax_P1_P2_P9_P10_46.59 <- cbind(`output_file_vmax-P1-46.59`, `output_file_vmax-P2-46.59`, `output_file_vmax-P9-46.59`, `output_file_vmax-P10-46.59`)
output_file_vmax_P1_P2_P9_P10_49.86 <- cbind(`output_file_vmax-P1-49.86`, `output_file_vmax-P2-49.86`, `output_file_vmax-P9-49.86`, `output_file_vmax-P10-49.86`)
output_file_vmax_P1_P2_P9_P10_9.18 <- cbind(`output_file_vmax-P1-9.18`, `output_file_vmax-P2-9.18`, `output_file_vmax-P9-9.18`, `output_file_vmax-P10-9.18`)
output_file_vmax_P1_P2_P9_P10_28.33 <- cbind(`output_file_vmax-P1-28.33`, `output_file_vmax-P2-28.33`, `output_file_vmax-P9-28.33`, `output_file_vmax-P10-28.33`)
output_file_vmax_P1_P2_P9_P10_30.46 <- cbind(`output_file_vmax-P1-30.46`, `output_file_vmax-P2-30.46`, `output_file_vmax-P9-30.46`, `output_file_vmax-P10-30.46`)
output_file_vmax_P1_P2_P9_P10_27.40 <- cbind(`output_file_vmax-P1-27.40`, `output_file_vmax-P2-27.40`, `output_file_vmax-P9-27.40`, `output_file_vmax-P10-27.40`)


# Create SWA columns for each tree
# Define SWA values
# Remove duplicated column names
output_file_vmax_P1_P2_P9_P10_26.46 <- output_file_vmax_P1_P2_P9_P10_26.46 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_26.46$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_26.46 <- output_file_vmax_P1_P2_P9_P10_26.46 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_26.46$S11003)



output_file_vmax_P1_P2_P9_P10_26.46 <- output_file_vmax_P1_P2_P9_P10_26.46 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_26.46$S11003)
output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_26.46 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################


output_file_vmax_P1_P2_P9_P10_40.36 <- output_file_vmax_P1_P2_P9_P10_40.36 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_40.36$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_40.36 <- output_file_vmax_P1_P2_P9_P10_40.36 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_40.36$S11003)



output_file_vmax_P1_P2_P9_P10_40.36 <- output_file_vmax_P1_P2_P9_P10_40.36 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_40.36$S11003)
output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_40.36 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
output_file_vmax_P1_P2_P9_P10_37.41 <- output_file_vmax_P1_P2_P9_P10_37.41 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_37.41$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_37.41 <- output_file_vmax_P1_P2_P9_P10_37.41 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_37.41$S11003)



output_file_vmax_P1_P2_P9_P10_37.41 <- output_file_vmax_P1_P2_P9_P10_37.41 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_37.41$S11003)
output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_37.41 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_32.34 <- output_file_vmax_P1_P2_P9_P10_32.34 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_32.34$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_32.34 <- output_file_vmax_P1_P2_P9_P10_32.34 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_32.34$S11003)



output_file_vmax_P1_P2_P9_P10_32.34 <- output_file_vmax_P1_P2_P9_P10_32.34 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_32.34$S11003)
output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_32.34 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_17.02 <- output_file_vmax_P1_P2_P9_P10_17.02 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_17.02$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_17.02 <- output_file_vmax_P1_P2_P9_P10_17.02 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_17.02$S11003)



output_file_vmax_P1_P2_P9_P10_17.02 <- output_file_vmax_P1_P2_P9_P10_17.02 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_17.02$S11003)
output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_17.02 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_15.41 <- output_file_vmax_P1_P2_P9_P10_15.41 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_15.41$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_15.41 <- output_file_vmax_P1_P2_P9_P10_15.41 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_15.41$S11003)



output_file_vmax_P1_P2_P9_P10_15.41 <- output_file_vmax_P1_P2_P9_P10_15.41 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_15.41$S11003)
output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_15.41 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_43.38 <- output_file_vmax_P1_P2_P9_P10_43.38 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_43.38$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_43.38 <- output_file_vmax_P1_P2_P9_P10_43.38 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_43.38$S11003)



output_file_vmax_P1_P2_P9_P10_43.38 <- output_file_vmax_P1_P2_P9_P10_43.38 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_43.38$S11003)
output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_43.38 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_11.42 <- output_file_vmax_P1_P2_P9_P10_11.42 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_11.42$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_11.42 <- output_file_vmax_P1_P2_P9_P10_11.42 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_11.42$S11003)



output_file_vmax_P1_P2_P9_P10_11.42 <- output_file_vmax_P1_P2_P9_P10_11.42 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_11.42$S11003)
output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_11.42 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_23.48 <- output_file_vmax_P1_P2_P9_P10_23.48 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_23.48$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_23.48 <- output_file_vmax_P1_P2_P9_P10_23.48 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_23.48$S11003)



output_file_vmax_P1_P2_P9_P10_23.48 <- output_file_vmax_P1_P2_P9_P10_23.48 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_23.48$S11003)
output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_23.48 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_35.46 <- output_file_vmax_P1_P2_P9_P10_35.46 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_35.46$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_35.46 <- output_file_vmax_P1_P2_P9_P10_35.46 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_35.46$S11003)



output_file_vmax_P1_P2_P9_P10_35.46 <- output_file_vmax_P1_P2_P9_P10_35.46 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_35.46$S11003)
output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_35.46 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_41.31 <- output_file_vmax_P1_P2_P9_P10_41.31 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_41.31$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_41.31 <- output_file_vmax_P1_P2_P9_P10_41.31 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_41.31$S11003)



output_file_vmax_P1_P2_P9_P10_41.31 <- output_file_vmax_P1_P2_P9_P10_41.31 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_41.31$S11003)
output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_41.31 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################

output_file_vmax_P1_P2_P9_P10_21.48 <- output_file_vmax_P1_P2_P9_P10_21.48 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_21.48$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_21.48 <- output_file_vmax_P1_P2_P9_P10_21.48 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_21.48$S11003)



output_file_vmax_P1_P2_P9_P10_21.48 <- output_file_vmax_P1_P2_P9_P10_21.48 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_21.48$S11003)
output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_21.48 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_6.40 <- output_file_vmax_P1_P2_P9_P10_6.40 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_6.40$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                 ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_6.40 <- output_file_vmax_P1_P2_P9_P10_6.40 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_6.40$S11003)



output_file_vmax_P1_P2_P9_P10_6.40 <- output_file_vmax_P1_P2_P9_P10_6.40 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_6.40$S11003)
output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_6.40 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_12.33 <- output_file_vmax_P1_P2_P9_P10_12.33 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_12.33$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_12.33 <- output_file_vmax_P1_P2_P9_P10_12.33 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_12.33$S11003)



output_file_vmax_P1_P2_P9_P10_12.33 <- output_file_vmax_P1_P2_P9_P10_12.33 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_12.33$S11003)
output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_12.33 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################

output_file_vmax_P1_P2_P9_P10_19.93 <- output_file_vmax_P1_P2_P9_P10_19.93 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_19.93$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_19.93 <- output_file_vmax_P1_P2_P9_P10_19.93 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_19.93$S11003)



output_file_vmax_P1_P2_P9_P10_19.93 <- output_file_vmax_P1_P2_P9_P10_19.93 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_19.93$S11003)
output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_19.93 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_46.59 <- output_file_vmax_P1_P2_P9_P10_46.59 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_46.59$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_46.59 <- output_file_vmax_P1_P2_P9_P10_46.59 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_46.59$S11003)



output_file_vmax_P1_P2_P9_P10_46.59 <- output_file_vmax_P1_P2_P9_P10_46.59 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_46.59$S11003)
output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_46.59 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_49.86 <- output_file_vmax_P1_P2_P9_P10_49.86 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_49.86$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_49.86 <- output_file_vmax_P1_P2_P9_P10_49.86 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_49.86$S11003)



output_file_vmax_P1_P2_P9_P10_49.86 <- output_file_vmax_P1_P2_P9_P10_49.86 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_49.86$S11003)
output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_49.86 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################

output_file_vmax_P1_P2_P9_P10_9.18 <- output_file_vmax_P1_P2_P9_P10_9.18 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_9.18$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                 ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_9.18 <- output_file_vmax_P1_P2_P9_P10_9.18 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_9.18$S11003)



output_file_vmax_P1_P2_P9_P10_9.18 <- output_file_vmax_P1_P2_P9_P10_9.18 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_9.18$S11003)
output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_9.18 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_28.33 <- output_file_vmax_P1_P2_P9_P10_28.33 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_28.33$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_28.33 <- output_file_vmax_P1_P2_P9_P10_28.33 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_28.33$S11003)



output_file_vmax_P1_P2_P9_P10_28.33 <- output_file_vmax_P1_P2_P9_P10_28.33 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_28.33$S11003)
output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_28.33 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_30.46 <- output_file_vmax_P1_P2_P9_P10_30.46 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_30.46$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_30.46 <- output_file_vmax_P1_P2_P9_P10_30.46 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_30.46$S11003)



output_file_vmax_P1_P2_P9_P10_30.46 <- output_file_vmax_P1_P2_P9_P10_30.46 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_30.46$S11003)
output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_30.46 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
output_file_vmax_P1_P2_P9_P10_27.40 <- output_file_vmax_P1_P2_P9_P10_27.40 %>%
  select(-matches("DateTime|avg.can.prss|avg.can.shv|avg.rshort"))
output_file_vmax_P1_P2_P9_P10_27.40$DateTime<-seq(ymd_hms("2008-01-01 00:00:00"),
                                                  ymd_hms("2008-12-31 23:30:00"), "30 mins")
output_file_vmax_P1_P2_P9_P10_27.40 <- output_file_vmax_P1_P2_P9_P10_27.40 %>%
  mutate(
    SWA_Tree11004 = (BA_CO.11004 / 10000) * 0.78,
    SWA_Tree11003 = (BA_CO.11003 / 10000) * 0.78,
    SWA_Tree11011 = (BA_CO.11011 / 10000) * 0.78,
    SWA_Tree12007 = (BA_CO.12007 / 10000) * 0.78,
    SWA_Tree17030 = (BA_CO.17030 / 10000) * 0.78,
    SWA_Tree15033 = (BA_CO.15033 / 10000) * 0.78,
    SWA_Tree13034 = (BA_CO.13034 / 10000) * 0.78,
    SWA_Tree16015 = (BA_CO.16015 / 10000) * 0.78,
    SWA_Tree26062 = (BA_CO.26062 / 10000) * 0.78,
    SWA_Tree25009 = (BA_CO.25009 / 10000) * 0.78,
    SWA_Tree26063 = (BA_CO.26063 / 10000) * 0.78,
    SWA_Tree27046 = (BA_CO.27046 / 10000) * 0.78,
    SWA_Tree28044 = (BA_CO.28044 / 10000) * 0.78,
    SWA_Tree22022 = (BA_CO.22022 / 10000) * 0.78,
    SWA_Tree21019 = (BA_CO.21019 / 10000) * 0.78,
    SWA_Tree23003 = (BA_CO.23003 / 10000) * 0.78,
    SWA_Tree24013 = (BA_CO.24013 / 10000) * 0.78
    
  )
mean(output_file_vmax_P1_P2_P9_P10_27.40$S11003)



output_file_vmax_P1_P2_P9_P10_27.40 <- output_file_vmax_P1_P2_P9_P10_27.40 %>%
  mutate(
    S11004 = S11004 * 1000 / SWA_Tree11004,
    S11011 = S11011 * 1000 / SWA_Tree11011,
    S12007 = S12007 * 1000 / SWA_Tree12007,
    S17030 = S17030 * 1000 / SWA_Tree17030,
    S11003 = S11003 * 1000 / SWA_Tree11003,
    S15033 = S15033 * 1000 / SWA_Tree15033,
    S16015 = S16015 * 1000 / SWA_Tree16015,
    S13034 = S13034 * 1000 / SWA_Tree13034,
    S26062 = S26062 * 1000 / SWA_Tree26062,
    S26063 = S26063 * 1000 / SWA_Tree26063,
    S27046 = S27046 * 1000 / SWA_Tree27046,
    S28044 = S28044 * 1000 / SWA_Tree28044,
    S25009 = S25009 * 1000 / SWA_Tree25009,
    S22022 = S22022 * 1000 / SWA_Tree22022,
    S23003 = S23003 * 1000 / SWA_Tree23003,
    S21019 = S21019 * 1000 / SWA_Tree21019,
    S24013 = S24013 * 1000 / SWA_Tree24013
    # Add this line to directly mutate S11003
  )

mean(output_file_vmax_P1_P2_P9_P10_27.40$S11003)
output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime <- output_file_vmax_P1_P2_P9_P10_27.40 %>%
  filter(month(DateTime) %in% c(7, 8) & year(DateTime) == 2008 & hour(DateTime) >= 6 & hour(DateTime) < 18) %>%
  group_by(Date = as.Date(DateTime)) %>%
  summarise(
    S17030 = mean(S17030),
    S11011 = mean(S11011),
    S11003 = mean(S11003),
    S11004 = mean(S11004),
    S12007 = mean(S12007),
    S16015 = mean(S16015),
    S13034 = mean(S13034),
    S15033 = mean(S15033),
    S28044 = mean(S28044),
    S26063 = mean(S26063),
    S25009 = mean(S25009),
    S26062 = mean(S26062),
    S27046 = mean(S27046),
    S23003 = mean(S23003),
    S21019 = mean(S21019),
    S22022 = mean(S22022),
    S24013 = mean(S24013)
  ) %>%
  ungroup()
#####################################################
#####################################################
#####################################################
