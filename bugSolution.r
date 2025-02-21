```r
# This improved code handles cases where some of the requested columns do not exist in the data frame
# using error handling and explicit checks.

df <- data.frame(colA = 1:3, colB = 4:6, colC = 7:9)

cols_to_select <- c("colA", "colX")

# Check if all columns exist before subsetting
existing_cols <- intersect(cols_to_select, colnames(df))
missing_cols <- setdiff(cols_to_select, colnames(df))

if (length(missing_cols) > 0) {
  warning(paste("Columns not found:", paste(missing_cols, collapse = ", ")))
}

subset_df <- df[, existing_cols, drop = FALSE] # drop = FALSE ensures data.frame is returned even with one column

print(subset_df)
```