
#####################################
#
# List of functions
#
#####################################

# convert from ml ----

convert_to_ml <- function(quantity, unit) {
  conversion_rates <- list(
    "ml" = 1,
    "cl" = 10,
    "dl" = 100
  )
  
  converted_quantity <- numeric(length(quantity))
  
  for (i in seq_along(quantity)) {
    if (unit[i] %in% names(conversion_rates)) {
      converted_quantity[i] <- quantity[i] * conversion_rates[[unit[i]]]
    } else {
      converted_quantity[i] <- quantity[i]
    }
  }
  
  return(converted_quantity)
}

calculate_quantities <- function(cocktail, amount, target_unit) {
  
  recipe <- cocktails %>%
    filter(cocktail_name == cocktail)
  
  if (nrow(recipe) > 0) {
    recipe <- recipe %>%
      mutate(quantity_ml = convert_to_ml(quantity, unit))
    
    if (target_unit == "ml") {
      recipe_target <- recipe %>%
        mutate(quantity = quantity_ml * amount)
    } else {
      recipe_target <- recipe %>%
        mutate(quantity = case_when(
          unit %in% c("cubes", "leaves", "pinch") ~ quantity * amount,
          unit == "ml" ~ quantity_ml * amount / convert_to_ml(1, target_unit),
          TRUE ~ quantity * amount
        ),
        unit = case_when(
          unit %in% c("cubes", "leaves", "pinch") ~ unit,
          unit == "ml" ~ target_unit,
          TRUE ~ unit
        )
        )
    }
    
    return(recipe_target)
  } else {
    return(NULL)
  }
}
