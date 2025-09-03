### Name: Florian Boyaka
### Date: August 11, 2025
### Subject: Lending Club Loan Analysis

### Goals
# 1. Create visuals for the data that I'm able to showcase.
# 2. Implement data analysis principles and explain them.
# 3. Instructions should be repeatable without additional input from the user
#    except for downloading the data to a specific location.
# 4. Be able to simply describe results of statistical significance or results 
#    (i.e. p-values and T-test)


### Questions to answer
# 1. What determines whether or not a person is accepted for a loan?
# 2. Is there a level of income more likely to get a loan?
# 3. Which features are the best predictors of acceptance?
# 4. Of the people accepted for a loan, how many were unable to pay?
# 5. What is the distribution of accepted/paid, accepted/not paid, and denied loans?
# 6. What indicators are not significant?
# 7. Are the outliers impacting the potential result.
# 8. What types of distribution does the data have.


### Success indicators
# 1. Answering the questions above.
# 2. Creating visuals comparing.
# 3. (Null) Hypothesis test with statistical significance.




### Library statements
library(data.table)


setwd(dirname(rstudioapi::getSourceEditorContext()$path))

accepted_loans <- fread("Lending\ Club\ Load\ Data/accepted_2007_to_2018q4.csv/accepted_2007_to_2018Q4.csv")
rejected_loans <- fread("Lending\ Club\ Load\ Data/rejected_2007_to_2018q4.csv/rejected_2007_to_2018Q4.csv")


head(accepted_loans)
head(rejected_loans)



### Functions
validate_dataset <- function(dataset){
  print("Validating Data")
  print("Column Names")
  column_names <- colnames(dataset)
  print(column_names)
  print("Summary")
  summary(dataset)
  print("Missing Data")
  col_missing <- colSums(is.na(dataset))
  print(col_missing)
  print("Datatypes")
  str(weather_data)
  
  for (i in column_names){
    # Count unique values in every column
    print(c("Column",i))
  }
}



### Running Code
validate_dataset(rejected_loans)




