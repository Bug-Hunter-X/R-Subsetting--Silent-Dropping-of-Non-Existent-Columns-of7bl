```r
# This code attempts to subset a data frame using a character vector containing column names,
# but it produces unexpected results due to improper handling of column name matching.

df <- data.frame(colA = 1:3, colB = 4:6, colC = 7:9)

cols_to_select <- c("colA", "colX") # colX doesn't exist

subset_df <- df[, cols_to_select]

print(subset_df)
```