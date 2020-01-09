# Yours Dear R miscelaneous

## Best practices

Use underscore_in_variables.

Set labels from lists using helpers:

- `labelTranslations` in `arsenal`,
- `labsler` for ggplot (see [labsler.R](./ggplot/labsler.R)).
- `renamer` for data frames (see [renamer.R](./dplyr/rename.R)).

## Project Structure

- data/
- data/dataset.xlsx
- docs/
- out/
- out/analysis.html
- out/plot.pdf
- tmp/
- data.R
- analysis.Rmd
- Readme.md
- misc.R
- styles.css

## Validation

Do validation of the whole data set and before analyses.

## Tidy

- broom
- autoplot's fortify

## Reports

Always add stat methods to the end of the report.

Add citations using `citation`.
