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
#calculate mean square error by substracting each parameter simulated sap 
# flux density with reference parameter of each trees

#########CALCULATE MSE######
#########AMBIENT MSE#######
# Calculate MSE for Tree 11011
MSE_26.46_11011 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_40.36_11011 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_37.41_11011 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_32.34_11011 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_17.02_11011 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_15.41_11011 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_43.38_11011 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_11.42_11011 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_23.48_11011 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_35.46_11011 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_41.31_11011 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_21.48_11011 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_6.40_11011 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_12.33_11011 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_19.93_11011 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_46.59_11011 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_49.86_11011 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_9.18_11011 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_28.33_11011 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)
MSE_30.46_11011 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S11011 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11011)^2)

# Calculate MSE for Tree 11003
MSE_26.46_11003 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_40.36_11003 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_37.41_11003 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_32.34_11003 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_17.02_11003 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_15.41_11003 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_43.38_11003 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_11.42_11003 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_23.48_11003 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_35.46_11003 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_41.31_11003 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_21.48_11003 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_6.40_11003 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_12.33_11003 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_19.93_11003 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_46.59_11003 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_49.86_11003 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_9.18_11003 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_28.33_11003 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)
MSE_30.46_11003 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S11003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11003)^2)


# Calculate MSE for Tree 11004
MSE_26.46_11004 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_40.36_11004 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_37.41_11004 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_32.34_11004 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_17.02_11004 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_15.41_11004 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_43.38_11004 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_11.42_11004 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_23.48_11004 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_35.46_11004 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_41.31_11004 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_21.48_11004 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_6.40_11004 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_12.33_11004 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_19.93_11004 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_46.59_11004 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_49.86_11004 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_9.18_11004 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_28.33_11004 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)
MSE_30.46_11004 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S11004 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S11004)^2)

# Calculate MSE for Tree 12007
MSE_26.46_12007 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_40.36_12007 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_37.41_12007 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_32.34_12007 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_17.02_12007 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_15.41_12007 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_43.38_12007 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_11.42_12007 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_23.48_12007 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_35.46_12007 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_41.31_12007 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_21.48_12007 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_6.40_12007 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_12.33_12007 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_19.93_12007 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_46.59_12007 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_49.86_12007 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_9.18_12007 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_28.33_12007 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)
MSE_30.46_12007 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S12007 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S12007)^2)


# Calculate MSE for Tree 17030
MSE_26.46_17030 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_40.36_17030 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_37.41_17030 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_32.34_17030 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_17.02_17030 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_15.41_17030 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_43.38_17030 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_11.42_17030 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_23.48_17030 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_35.46_17030 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_41.31_17030 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_21.48_17030 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_6.40_17030 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_12.33_17030 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_19.93_17030 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_46.59_17030 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_49.86_17030 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_9.18_17030 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_28.33_17030 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)
MSE_30.46_17030 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S17030 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S17030)^2)

# Calculate MSE for Tree 13034
MSE_26.46_13034 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_40.36_13034 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_37.41_13034 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_32.34_13034 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_17.02_13034 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_15.41_13034 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_43.38_13034 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_11.42_13034 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_23.48_13034 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_35.46_13034 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_41.31_13034 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_21.48_13034 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_6.40_13034 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_12.33_13034 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_19.93_13034 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_46.59_13034 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_49.86_13034 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_9.18_13034 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_28.33_13034 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)
MSE_30.46_13034 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S13034 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S13034)^2)

# Calculate MSE for Tree 15033
MSE_26.46_15033 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_40.36_15033 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_37.41_15033 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_32.34_15033 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_17.02_15033 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_15.41_15033 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_43.38_15033 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_11.42_15033 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_23.48_15033 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_35.46_15033 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_41.31_15033 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_21.48_15033 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_6.40_15033 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_12.33_15033 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_19.93_15033 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_46.59_15033 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_49.86_15033 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_9.18_15033 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_28.33_15033 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)
MSE_30.46_15033 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S15033 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S15033)^2)

# Calculate MSE for Tree 16015
MSE_26.46_16015 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_40.36_16015 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_37.41_16015 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_32.34_16015 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_17.02_16015 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_15.41_16015 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_43.38_16015 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_11.42_16015 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_23.48_16015 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_35.46_16015 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_41.31_16015 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_21.48_16015 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_6.40_16015 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_12.33_16015 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_19.93_16015 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_46.59_16015 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_49.86_16015 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_9.18_16015 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_28.33_16015 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)
MSE_30.46_16015 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S16015 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S16015)^2)

#######ELEVATED MSE#######
# Calculate MSE for Tree 25009
MSE_26.46_25009 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_40.36_25009 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_37.41_25009 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_32.34_25009 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_17.02_25009 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_15.41_25009 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_43.38_25009 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_11.42_25009 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_23.48_25009 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_35.46_25009 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_41.31_25009 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_21.48_25009 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_6.40_25009 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_12.33_25009 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_19.93_25009 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_46.59_25009 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_49.86_25009 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_9.18_25009 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_28.33_25009 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)
MSE_30.46_25009 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S25009 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S25009)^2)


# Calculate MSE for Tree 26062
MSE_26.46_26062 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_40.36_26062 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_37.41_26062 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_32.34_26062 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_17.02_26062 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_15.41_26062 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_43.38_26062 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_11.42_26062 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_23.48_26062 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_35.46_26062 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_41.31_26062 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_21.48_26062 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_6.40_26062 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_12.33_26062 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_19.93_26062 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_46.59_26062 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_49.86_26062 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_9.18_26062 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_28.33_26062 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)
MSE_30.46_26062 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S26062 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26062)^2)

# Calculate MSE for Tree 26063
MSE_26.46_26063 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_40.36_26063 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_37.41_26063 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_32.34_26063 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_17.02_26063 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_15.41_26063 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_43.38_26063 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_11.42_26063 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_23.48_26063 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_35.46_26063 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_41.31_26063 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_21.48_26063 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_6.40_26063 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_12.33_26063 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_19.93_26063 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_46.59_26063 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_49.86_26063 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_9.18_26063 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_28.33_26063 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)
MSE_30.46_26063 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S26063 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S26063)^2)

# Calculate MSE for Tree 27046
MSE_26.46_27046 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_40.36_27046 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_37.41_27046 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_32.34_27046 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_17.02_27046 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_15.41_27046 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_43.38_27046 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_11.42_27046 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_23.48_27046 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_35.46_27046 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_41.31_27046 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_21.48_27046 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_6.40_27046 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_12.33_27046 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_19.93_27046 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_46.59_27046 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_49.86_27046 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_9.18_27046 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_28.33_27046 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)
MSE_30.46_27046 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S27046 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S27046)^2)

# Calculate MSE for Tree 28044
MSE_26.46_28044 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_40.36_28044 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_37.41_28044 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_32.34_28044 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_17.02_28044 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_15.41_28044 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_43.38_28044 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_11.42_28044 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_23.48_28044 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_35.46_28044 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_41.31_28044 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_21.48_28044 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_6.40_28044 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_12.33_28044 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_19.93_28044 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_46.59_28044 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_49.86_28044 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_9.18_28044 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_28.33_28044 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)
MSE_30.46_28044 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S28044 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S28044)^2)


# Calculate MSE for Tree 21019
MSE_26.46_21019 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_40.36_21019 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_37.41_21019 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_32.34_21019 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_17.02_21019 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_15.41_21019 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_43.38_21019 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_11.42_21019 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_23.48_21019 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_35.46_21019 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_41.31_21019 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_21.48_21019 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_6.40_21019 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_12.33_21019 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_19.93_21019 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_46.59_21019 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_49.86_21019 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_9.18_21019 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_28.33_21019 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)
MSE_30.46_21019 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S21019 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S21019)^2)

# Calculate MSE for Tree 22022
MSE_26.46_22022 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_40.36_22022 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_37.41_22022 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_32.34_22022 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_17.02_22022 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_15.41_22022 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_43.38_22022 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_11.42_22022 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_23.48_22022 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_35.46_22022 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_41.31_22022 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_21.48_22022 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_6.40_22022 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_12.33_22022 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_19.93_22022 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_46.59_22022 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_49.86_22022 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_9.18_22022 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_28.33_22022 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)
MSE_30.46_22022 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S22022 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S22022)^2)


# Calculate MSE for Tree 23003
MSE_26.46_23003 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_40.36_23003 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_37.41_23003 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_32.34_23003 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_17.02_23003 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_15.41_23003 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_43.38_23003 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_11.42_23003 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_23.48_23003 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_35.46_23003 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_41.31_23003 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_21.48_23003 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_6.40_23003 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_12.33_23003 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_19.93_23003 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_46.59_23003 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_49.86_23003 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_9.18_23003 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_28.33_23003 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)
MSE_30.46_23003 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S23003 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S23003)^2)

# Calculate MSE for Tree 24013
MSE_26.46_24013 <- mean((output_file_vmax_P1_P2_P9_P10_26.46.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_40.36_24013 <- mean((output_file_vmax_P1_P2_P9_P10_40.36.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_37.41_24013 <- mean((output_file_vmax_P1_P2_P9_P10_37.41.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_32.34_24013 <- mean((output_file_vmax_P1_P2_P9_P10_32.34.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_17.02_24013 <- mean((output_file_vmax_P1_P2_P9_P10_17.02.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_15.41_24013 <- mean((output_file_vmax_P1_P2_P9_P10_15.41.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_43.38_24013 <- mean((output_file_vmax_P1_P2_P9_P10_43.38.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_11.42_24013 <- mean((output_file_vmax_P1_P2_P9_P10_11.42.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_23.48_24013 <- mean((output_file_vmax_P1_P2_P9_P10_23.48.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_35.46_24013 <- mean((output_file_vmax_P1_P2_P9_P10_35.46.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_41.31_24013 <- mean((output_file_vmax_P1_P2_P9_P10_41.31.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_21.48_24013 <- mean((output_file_vmax_P1_P2_P9_P10_21.48.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_6.40_24013 <- mean((output_file_vmax_P1_P2_P9_P10_6.40.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_12.33_24013 <- mean((output_file_vmax_P1_P2_P9_P10_12.33.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_19.93_24013 <- mean((output_file_vmax_P1_P2_P9_P10_19.93.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_46.59_24013 <- mean((output_file_vmax_P1_P2_P9_P10_46.59.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_49.86_24013 <- mean((output_file_vmax_P1_P2_P9_P10_49.86.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_9.18_24013 <- mean((output_file_vmax_P1_P2_P9_P10_9.18.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_28.33_24013 <- mean((output_file_vmax_P1_P2_P9_P10_28.33.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)
MSE_30.46_24013 <- mean((output_file_vmax_P1_P2_P9_P10_30.46.sapflux_daytime$S24013 - output_file_vmax_P1_P2_P9_P10_27.40.sapflux_daytime$S24013)^2)


# average_MSE_ambient
average_MSE_all_trees_ambient_Patch1_Patch9 <- c(
  mean(c(MSE_26.46_11004, MSE_26.46_11011, MSE_26.46_12007, MSE_26.46_11003, MSE_26.46_17030,MSE_26.46_13034,MSE_26.46_15033,MSE_26.46_16015)),
  mean(c(MSE_40.36_11004, MSE_40.36_11011, MSE_40.36_12007, MSE_40.36_11003, MSE_40.36_17030,MSE_40.36_13034,MSE_40.36_15033,MSE_40.36_16015)),
  mean(c(MSE_37.41_11004, MSE_37.41_11011, MSE_37.41_12007, MSE_37.41_11003, MSE_37.41_17030,MSE_37.41_13034,MSE_37.41_15033,MSE_37.41_16015)),
  mean(c(MSE_32.34_11004, MSE_32.34_11011, MSE_32.34_12007, MSE_32.34_11003, MSE_32.34_17030,MSE_32.34_13034,MSE_32.34_15033,MSE_32.34_16015)),
  mean(c(MSE_17.02_11004, MSE_17.02_11011, MSE_17.02_12007, MSE_17.02_11003, MSE_17.02_12007,MSE_17.02_13034,MSE_17.02_15033,MSE_17.02_16015)),
  mean(c(MSE_15.41_11004, MSE_15.41_11011, MSE_15.41_12007, MSE_15.41_11003, MSE_15.41_17030,MSE_15.41_13034,MSE_15.41_15033,MSE_15.41_16015)),
  mean(c(MSE_43.38_11004, MSE_43.38_11011, MSE_43.38_12007, MSE_43.38_11003, MSE_43.38_17030,MSE_43.38_13034,MSE_43.38_15033,MSE_43.38_16015)),
  mean(c(MSE_11.42_11004, MSE_11.42_11011, MSE_11.42_12007, MSE_11.42_11003,MSE_11.42_17030,MSE_11.42_13034,MSE_11.42_15033,MSE_11.42_16015)),
  mean(c(MSE_23.48_11004, MSE_23.48_11011, MSE_23.48_12007, MSE_23.48_11003, MSE_23.48_17030,MSE_23.48_13034,MSE_23.48_15033,MSE_23.48_16015)),
  mean(c(MSE_35.46_11004, MSE_35.46_11011, MSE_35.46_12007, MSE_35.46_11003, MSE_35.46_17030,MSE_35.46_13034,MSE_35.46_15033,MSE_35.46_16015)),
  mean(c(MSE_41.31_11004, MSE_41.31_11011, MSE_41.31_12007, MSE_41.31_11003, MSE_41.31_17030,MSE_41.31_13034,MSE_41.31_15033,MSE_41.31_16015)),
  mean(c(MSE_21.48_11004, MSE_21.48_11011, MSE_21.48_12007, MSE_21.48_11003, MSE_21.48_17030,MSE_21.48_13034,MSE_21.48_15033,MSE_21.48_16015)),
  mean(c(MSE_6.40_11004, MSE_6.40_11011, MSE_6.40_12007, MSE_6.40_11003, MSE_6.40_17030,MSE_6.40_13034,MSE_6.40_15033,MSE_6.40_16015)),
  mean(c(MSE_12.33_11004, MSE_12.33_11011, MSE_12.33_12007, MSE_12.33_11003, MSE_12.33_17030,MSE_12.33_13034,MSE_12.33_15033,MSE_12.33_16015)),
  mean(c(MSE_19.93_11004, MSE_19.93_11011, MSE_19.93_12007, MSE_19.93_11003, MSE_19.93_17030,MSE_19.93_13034,MSE_19.93_15033,MSE_19.93_16015)),
  mean(c(MSE_46.59_11004, MSE_46.59_11011, MSE_46.59_12007, MSE_46.59_11003, MSE_46.59_17030,MSE_46.59_13034,MSE_46.59_15033,MSE_46.59_16015)),
  mean(c(MSE_49.86_11004, MSE_49.86_11011, MSE_49.86_12007, MSE_49.86_11003, MSE_49.86_17030,MSE_49.86_13034,MSE_49.86_15033,MSE_49.86_16015)),
  mean(c(MSE_9.18_11004, MSE_9.18_11011, MSE_9.18_12007, MSE_9.18_11003, MSE_9.18_17030,MSE_9.18_13034,MSE_9.18_15033,MSE_9.18_16015)),
  mean(c(MSE_28.33_11004, MSE_28.33_11011, MSE_28.33_12007, MSE_28.33_11003, MSE_28.33_17030,MSE_28.33_13034,MSE_28.33_15033,MSE_28.33_16015)),
  mean(c(MSE_30.46_11004, MSE_30.46_11011, MSE_30.46_12007, MSE_30.46_11003, MSE_30.46_17030,MSE_30.46_13034,MSE_30.46_15033,MSE_30.46_16015))
)

###########################################==========================

# Calculate criterion
criterion <- median(average_MSE_all_trees_ambient_Patch1_Patch9, na.rm = TRUE)
cat("Criterion:", criterion, "\n")

# Classify lambda values as acceptable or unacceptable based on the criterion
acceptable <- # Calculate criterion
criterion <- median(average_MSE_all_trees_ambient_Patch1_Patch9, na.rm = TRUE)
cat("Criterion:", criterion, "\n")

# Classify lambda values as acceptable or unacceptable based on the criterion
acceptable <- average_MSE_all_trees_ambient_Patch1_Patch9 < criterion
unacceptable <- average_MSE_all_trees_ambient_Patch1_Patch9 >= criterion
##########################################
######For LAMBDA#####==================================
parameter_ranges <- c(3.56, 9.38, 6.06, 10.27, 14.16, 11.38, 3.88, 7.27, 11.60,
                      5.30, 7.95, 2.05, 12.31, 9.64, 8.46, 1.22, 2.65, 14.40, 13.36,
                      4.63)
normalized_parameters <- (parameter_ranges - min(parameter_ranges)) / (max(parameter_ranges) - min(parameter_ranges))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable <- normalized_parameters[acceptable]
normalized_parameters_unacceptable <- normalized_parameters[!acceptable]
# Conduct Wilcoxon test
wilcox_result <- wilcox.test(normalized_parameters_acceptable, normalized_parameters_unacceptable)

# Print the test result
print(wilcox_result)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index <- median(normalized_parameters_acceptable) - median(normalized_parameters_unacceptable)
cat("Sensitivity Index:", sensitivity_index, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result$p.value < 0.05) {
  cat("Parameter sensitivity is statistically significant.\n")
} else {
  cat("Parameter sensitivity is not statistically significant.\n")
}


######=======================================
######## For beta#####

parameter_ranges_beta <- c(-1.13070273, -0.88776894, -0.38203787, 0.09046134,
                      -0.57870537, -1.52737281, -0.12360631, -1.25746141,
                      -0.25078135, -1.83032428, 0.34345438, -0.65088637, 
                      -0.78676762, -1.44052187, -0.18816818, -1.96149344,
                      0.46187653, -1.64715084, 0.17933971, -1.06065842)





normalized_parameters_beta <- (parameter_ranges_beta - min(parameter_ranges_beta))/ (max(parameter_ranges_beta) - min(parameter_ranges_beta))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable_beta <- normalized_parameters_beta[acceptable]
normalized_parameters_unacceptable_beta <- normalized_parameters_beta[!acceptable]
# Conduct Wilcoxon test
wilcox_result_beta <- wilcox.test(normalized_parameters_acceptable_beta, 
                             normalized_parameters_unacceptable_beta)

# Print the test result
print(wilcox_result_beta)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index_beta <- median(normalized_parameters_acceptable_beta) - median(normalized_parameters_unacceptable_beta)
cat("Sensitivity Index_beta:", sensitivity_index_beta, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result_beta$p.value < 0.05) {
  cat("Parameter beta sensitivity is statistically significant.\n")
} else {
  cat("Parameter beta sensitivity is not statistically significant.\n")
}
 < criterion
unacceptable <- average_MSE_all_trees >= criterion
##########################################
######For LAMBDA#####==================================
parameter_ranges <- c(3.56, 9.38, 6.06, 10.27, 14.16, 11.38, 3.88, 7.27, 11.60,
                      5.30, 7.95, 2.05, 12.31, 9.64, 8.46, 1.22, 2.65, 14.40, 13.36,
                      4.63)
normalized_parameters <- (parameter_ranges - min(parameter_ranges)) / (max(parameter_ranges) - min(parameter_ranges))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable <- normalized_parameters[acceptable]
normalized_parameters_unacceptable <- normalized_parameters[!acceptable]
# Conduct Wilcoxon test
wilcox_result <- wilcox.test(normalized_parameters_acceptable, normalized_parameters_unacceptable)

# Print the test result
print(wilcox_result)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index <- median(normalized_parameters_acceptable) - median(normalized_parameters_unacceptable)
cat("Sensitivity Index:", sensitivity_index, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result$p.value < 0.05) {
  cat("Parameter sensitivity is statistically significant.\n")
} else {
  cat("Parameter sensitivity is not statistically significant.\n")
}


######=======================================
######## For vcmax#####

parameter_ranges_vcmax <- c(26.46, 40.36, 37.41, 32.34, 17.02, 15.41,
                            43.38, 11.42, 23.48, 35.46, 41.31, 21.48, 
                            6.40, 12.33, 19.93, 46.59, 49.86, 9.18, 
                            28.33, 30.46)





normalized_parameters_vcmax <- (parameter_ranges_vcmax - min(parameter_ranges_vcmax))/ (max(parameter_ranges_vcmax) - min(parameter_ranges_vcmax))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable_vcmax <- normalized_parameters_vcmax[acceptable]
normalized_parameters_unacceptable_vcmax <- normalized_parameters_vcmax[!acceptable]
# Conduct Wilcoxon test
wilcox_result_vcmax <- wilcox.test(normalized_parameters_acceptable_vcmax, 
                                  normalized_parameters_unacceptable_vcmax)

# Print the test result
print(wilcox_result_vcmax)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index_vcmax <- median(normalized_parameters_acceptable_vcmax) - median(normalized_parameters_unacceptable_vcmax)
cat("Sensitivity Index_vcmax:", sensitivity_index_vcmax, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result_vcmax$p.value < 0.05) {
  cat("Parameter vcmax sensitivity is statistically significant.\n")
} else {
  cat("Parameter vcmax sensitivity is not statistically significant.\n")
}

######ELEVATED MSE########
# average_MSE_ambient
average_MSE_all_trees_elevated_Patch1_Patch9 <- c(
  mean(c(MSE_26.46_25009, MSE_26.46_26062, MSE_26.46_26063, MSE_26.46_27046, MSE_26.46_28044,MSE_26.46_21019,MSE_26.46_22022,MSE_26.46_23003,MSE_26.46_24013)),
  mean(c(MSE_40.36_25009, MSE_40.36_26062, MSE_40.36_26063, MSE_40.36_27046, MSE_40.36_28044,MSE_40.36_21019,MSE_40.36_22022,MSE_40.36_23003,MSE_40.36_24013)),
  mean(c(MSE_37.41_25009, MSE_37.41_26062, MSE_37.41_26063, MSE_37.41_27046, MSE_37.41_28044,MSE_37.41_21019,MSE_37.41_22022,MSE_37.41_23003,MSE_37.41_24013)),
  mean(c(MSE_32.34_25009, MSE_32.34_26062, MSE_32.34_26063, MSE_32.34_27046, MSE_32.34_28044,MSE_32.34_21019,MSE_32.34_22022,MSE_32.34_23003,MSE_32.34_24013)),
  mean(c(MSE_17.02_25009, MSE_17.02_26062, MSE_17.02_26063, MSE_17.02_27046, MSE_17.02_26063,MSE_17.02_21019,MSE_17.02_22022,MSE_17.02_23003,MSE_17.02_24013)),
  mean(c(MSE_15.41_25009, MSE_15.41_26062, MSE_15.41_26063, MSE_15.41_27046, MSE_15.41_28044,MSE_15.41_21019,MSE_15.41_22022,MSE_15.41_23003,MSE_15.41_24013)),
  mean(c(MSE_43.38_25009, MSE_43.38_26062, MSE_43.38_26063, MSE_43.38_27046, MSE_43.38_28044,MSE_43.38_21019,MSE_43.38_22022,MSE_43.38_23003,MSE_43.38_24013)),
  mean(c(MSE_11.42_25009, MSE_11.42_26062, MSE_11.42_26063, MSE_11.42_27046,MSE_11.42_28044,MSE_11.42_21019,MSE_11.42_22022,MSE_11.42_23003,MSE_11.42_24013)),
  mean(c(MSE_23.48_25009, MSE_23.48_26062, MSE_23.48_26063, MSE_23.48_27046, MSE_23.48_28044,MSE_23.48_21019,MSE_23.48_22022,MSE_23.48_23003,MSE_23.48_24013)),
  mean(c(MSE_35.46_25009, MSE_35.46_26062, MSE_35.46_26063, MSE_35.46_27046, MSE_35.46_28044,MSE_35.46_21019,MSE_35.46_22022,MSE_35.46_23003,MSE_35.46_24013)),
  mean(c(MSE_41.31_25009, MSE_41.31_26062, MSE_41.31_26063, MSE_41.31_27046, MSE_41.31_28044,MSE_41.31_21019,MSE_41.31_22022,MSE_41.31_23003,MSE_41.31_24013)),
  mean(c(MSE_21.48_25009, MSE_21.48_26062, MSE_21.48_26063, MSE_21.48_27046, MSE_21.48_28044,MSE_21.48_21019,MSE_21.48_22022,MSE_21.48_23003,MSE_21.48_24013)),
  mean(c(MSE_6.40_25009, MSE_6.40_26062, MSE_6.40_26063, MSE_6.40_27046, MSE_6.40_28044,MSE_6.40_21019,MSE_6.40_22022,MSE_6.40_23003,MSE_6.40_24013)),
  mean(c(MSE_12.33_25009, MSE_12.33_26062, MSE_12.33_26063, MSE_12.33_27046, MSE_12.33_28044,MSE_12.33_21019,MSE_12.33_22022,MSE_12.33_23003,MSE_12.33_24013)),
  mean(c(MSE_19.93_25009, MSE_19.93_26062, MSE_19.93_26063, MSE_19.93_27046, MSE_19.93_28044,MSE_19.93_21019,MSE_19.93_22022,MSE_19.93_23003,MSE_19.93_24013)),
  mean(c(MSE_46.59_25009, MSE_46.59_26062, MSE_46.59_26063, MSE_46.59_27046, MSE_46.59_28044,MSE_46.59_21019,MSE_46.59_22022,MSE_46.59_23003,MSE_46.59_24013)),
  mean(c(MSE_49.86_25009, MSE_49.86_26062, MSE_49.86_26063, MSE_49.86_27046, MSE_49.86_28044,MSE_49.86_21019,MSE_49.86_22022,MSE_49.86_23003,MSE_49.86_24013)),
  mean(c(MSE_9.18_25009, MSE_9.18_26062, MSE_9.18_26063, MSE_9.18_27046, MSE_9.18_28044,MSE_9.18_21019,MSE_9.18_22022,MSE_9.18_23003,MSE_9.18_24013)),
  mean(c(MSE_28.33_25009, MSE_28.33_26062, MSE_28.33_26063, MSE_28.33_27046, MSE_28.33_28044,MSE_28.33_21019,MSE_28.33_22022,MSE_28.33_23003,MSE_28.33_24013)),
  mean(c(MSE_30.46_25009, MSE_30.46_26062, MSE_30.46_26063, MSE_30.46_27046, MSE_30.46_28044,MSE_30.46_21019,MSE_30.46_22022,MSE_30.46_23003,MSE_30.46_24013))
)

###########################################==========================

# Calculate criterion
criterion <- median(average_MSE_all_trees_elevated_Patch1_Patch9, na.rm = TRUE)
cat("Criterion:", criterion, "\n")

# Classify lambda values as acceptable or unacceptable based on the criterion
acceptable <- # Calculate criterion
  criterion <- median(average_MSE_all_trees_elevated_Patch1_Patch9, na.rm = TRUE)
cat("Criterion:", criterion, "\n")

# Classify lambda values as acceptable or unacceptable based on the criterion
acceptable <- average_MSE_all_trees_elevated_Patch1_Patch9 < criterion
unacceptable <- average_MSE_all_trees_elevated_Patch1_Patch9 >= criterion
##########################################
######For LAMBDA#####==================================
parameter_ranges <- c(3.56, 9.38, 6.06, 10.27, 14.16, 11.38, 3.88, 7.27, 11.60,
                      5.30, 7.95, 2.05, 12.31, 9.64, 8.46, 1.22, 2.65, 14.40, 13.36,
                      4.63)
normalized_parameters <- (parameter_ranges - min(parameter_ranges)) / (max(parameter_ranges) - min(parameter_ranges))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable <- normalized_parameters[acceptable]
normalized_parameters_unacceptable <- normalized_parameters[!acceptable]
# Conduct Wilcoxon test
wilcox_result <- wilcox.test(normalized_parameters_acceptable, normalized_parameters_unacceptable)

# Print the test result
print(wilcox_result)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index <- median(normalized_parameters_acceptable) - median(normalized_parameters_unacceptable)
cat("Sensitivity Index:", sensitivity_index, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result$p.value < 0.05) {
  cat("Parameter sensitivity is statistically significant.\n")
} else {
  cat("Parameter sensitivity is not statistically significant.\n")
}


######=======================================
######## For beta#####

parameter_ranges_beta <- c(-1.13070273, -0.88776894, -0.38203787, 0.09046134,
                           -0.57870537, -1.52737281, -0.12360631, -1.25746141,
                           -0.25078135, -1.83032428, 0.34345438, -0.65088637, 
                           -0.78676762, -1.44052187, -0.18816818, -1.96149344,
                           0.46187653, -1.64715084, 0.17933971, -1.06065842)





normalized_parameters_beta <- (parameter_ranges_beta - min(parameter_ranges_beta))/ (max(parameter_ranges_beta) - min(parameter_ranges_beta))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable_beta <- normalized_parameters_beta[acceptable]
normalized_parameters_unacceptable_beta <- normalized_parameters_beta[!acceptable]
# Conduct Wilcoxon test
wilcox_result_beta <- wilcox.test(normalized_parameters_acceptable_beta, 
                                  normalized_parameters_unacceptable_beta)

# Print the test result
print(wilcox_result_beta)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index_beta <- median(normalized_parameters_acceptable_beta) - median(normalized_parameters_unacceptable_beta)
cat("Sensitivity Index_beta:", sensitivity_index_beta, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result_beta$p.value < 0.05) {
  cat("Parameter beta sensitivity is statistically significant.\n")
} else {
  cat("Parameter beta sensitivity is not statistically significant.\n")
}
unacceptable <- average_MSE_all_trees >= criterion
##########################################
######For LAMBDA#####==================================
parameter_ranges <- c(3.56, 9.38, 6.06, 10.27, 14.16, 11.38, 3.88, 7.27, 11.60,
                      5.30, 7.95, 2.05, 12.31, 9.64, 8.46, 1.22, 2.65, 14.40, 13.36,
                      4.63)
normalized_parameters <- (parameter_ranges - min(parameter_ranges)) / (max(parameter_ranges) - min(parameter_ranges))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable <- normalized_parameters[acceptable]
normalized_parameters_unacceptable <- normalized_parameters[!acceptable]
# Conduct Wilcoxon test
wilcox_result <- wilcox.test(normalized_parameters_acceptable, normalized_parameters_unacceptable)

# Print the test result
print(wilcox_result)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index <- median(normalized_parameters_acceptable) - median(normalized_parameters_unacceptable)
cat("Sensitivity Index:", sensitivity_index, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result$p.value < 0.05) {
  cat("Parameter sensitivity is statistically significant.\n")
} else {
  cat("Parameter sensitivity is not statistically significant.\n")
}


######=======================================
######## For vcmax#####

parameter_ranges_vcmax <- c(26.46, 40.36, 37.41, 32.34, 17.02, 15.41,
                            43.38, 11.42, 23.48, 35.46, 41.31, 21.48, 
                            6.40, 12.33, 19.93, 46.59, 49.86, 9.18, 
                            28.33, 30.46)





normalized_parameters_vcmax <- (parameter_ranges_vcmax - min(parameter_ranges_vcmax))/ (max(parameter_ranges_vcmax) - min(parameter_ranges_vcmax))


# Separate normalized parameters into acceptable and unacceptable subsets
normalized_parameters_acceptable_vcmax <- normalized_parameters_vcmax[acceptable]
normalized_parameters_unacceptable_vcmax <- normalized_parameters_vcmax[!acceptable]
# Conduct Wilcoxon test
wilcox_result_vcmax <- wilcox.test(normalized_parameters_acceptable_vcmax, 
                                   normalized_parameters_unacceptable_vcmax)

# Print the test result
print(wilcox_result_vcmax)

# Extract the sensitivity index (Wilcoxon estimator for the difference between acceptable and unacceptable parameter samples)
sensitivity_index_vcmax <- median(normalized_parameters_acceptable_vcmax) - median(normalized_parameters_unacceptable_vcmax)
cat("Sensitivity Index_vcmax:", sensitivity_index_vcmax, "\n")

# Evaluate if the parameter sensitivity is statistically significant based on the p-value
if (wilcox_result_vcmax$p.value < 0.05) {
  cat("Parameter vcmax sensitivity is statistically significant.\n")
} else {
  cat("Parameter vcmax sensitivity is not statistically significant.\n")
}

