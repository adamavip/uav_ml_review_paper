install.packages(c("bibliometrix", "dplyr", "igraph", "ggraph"))
library(bibliometrix)
library(dplyr)
library(igraph)
library(ggraph)

biblioshiny()
# Load the .ris file
text_file <- "C:/Users/ADAMANDOUR/OneDrive - CIMMYT/Documents/CIMMYT/Manuscrits/Bibliometrics/UAV_ML_review/Bibliometrix-UAV_ML_2.xlsx"
df <- readxl::read_excel(text_file)
filtered_df <- df[grep("YIELD|BIOMASS|NITROGEN", df$TI, ignore.case = TRUE), ]


# Generate the three-field plot
threeFieldsPlot(as.data.frame(filtered_df), fields = c("SO", "AU_CO", "ID"),n=c(20,20,20))
