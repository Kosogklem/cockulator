# Define the cocktail recipes
cocktails <- list(
  "Margarita" = list(
    ingredients = list(
      "tequila" = list(quantity = 50, unit = "ml"),
      "lime juice" = list(quantity = 25, unit = "ml"),
      "triple sec" = list(quantity = 25, unit = "ml"),
      "salt" = list(quantity = 1, unit = "pinch")
    )
  ),
  "Mojito" = list(
    ingredients = list(
      "rum" = list(quantity = 40, unit = "ml"),
      "lime juice" = list(quantity = 20, unit = "ml"),
      "sugar" = list(quantity = 2, unit = "ts"),
      "mint leaves" = list(quantity = 6, unit = "leaves"),
      "soda water" = list(quantity = 100, unit = "ml")
    )
  ),
  "Aperol Spritz" = list(
    ingredients = list(
      "prosecco"    = list(quantity = 75, unit = "ml"),
      "aperol"      = list(quantity = 50, unit = "ml"),
      "soda water"  = list(quantity = 25, unit = "ml"),
      "ice cubes"   = list(quantity = 6, unit = "cubes"),
      "slice of orange" = list(quantity = 1, unit = "slice")
    ),
    recipe = "this is how you make fucking sprit"
  ),
  "Dark 'n' Stormy" = list(
    ingredients = list(
      "dark rum" = list(quantity = 60, unit = "ml"),
      "lime juice" = list(quantity = 15, unit = "ml"),
      "ginger beer" = list(quantity = 150, unit = "ml"),
      "lime wheel" = list(quantity = 1, unit = "lime wheel")
    )
  ),
  "VE.N.TO" = list(
    ingredients = list(
      "grappa" = list(quantity = 45, unit = "ml"),
      "lemon juice" = list(quantity = 22.5, unit = "ml"),
      "honey mix" = list(quantity = 15, unit = "ml"),
      "chamomile syrup" = list(quantity = 15, unit = "ml"),
      "egg white (optional)" = list(quantity = 10, unit = "ml")
    )
  ),
  "Whiskey Sour" = list(
    ingredients = list(
      "bourbon whiskey" = list(quantity = 45, unit = "ml"),
      "lemon juice" = list(quantity = 25, unit = "ml"),
      "sugar syrup" = list(quantity = 20, unit = "ml"),
      "egg white (optional)" = list(quantity = 20, unit = "ml")
    )
  ),
  "Tequila Sunrise" = list(
    ingredients = list(
      "tequila" = list(quantity = 45, unit = "ml"),
      "orange juice" = list(quantity = 90, unit = "ml"),
      "grenadine syrup" = list(quantity = 15, unit = "ml")
    )
  ),
  "Sex on the Beach" = list(
    ingredients = list(
      "vodka" = list(quantity = 40, unit = "ml"),
      "peach schnapps" = list(quantity = 20, unit = "ml"),
      "orange juice" = list(quantity = 40, unit = "ml"),
      "cranberry juice" = list(quantity = 40, unit = "ml")
    )
  ),
  "Old Fashioned" = list(
    ingredients = list(
      "whiskey" = list(quantity = 45, unit = "ml"),
      "sugar cube" = list(quantity = 1, unit = "cube"),
      "angostura bitter" = list(quantity = 1, unit = "few dashes"),
      "water" = list(quantity = 1, unit = "few dashes")
    )
  ),
  "Negroni" = list(
    ingredients = list(
      "gin" = list(quantity = 30, unit = "ml"),
      "campari" = list(quantity = 30, unit = "ml"),
      "vermouth" = list(quantity = 30, unit = "ml")
    )
  ),
  "Bloody Mary" = list(
    ingredients = list(
      "vodka" = list(quantity = 45, unit = "ml"),
      "tomato juice" = list(quantity = 90, unit = "ml"),
      "lemon juice" = list(quantity = 15, unit = "ml"),
      "worcestershire sauce" = list(quantity = 2, unit = "dashes"),
      "tabasco. celery. salt. pepper" = list(unit = "up to taste")
    )
  ),
  "Irish Coffee" = list(
    ingredients = list(
      "irish whiskey" = list(quantity = 50, unit = "ml"),
      "hot coffee" = list(quantity = 120, unit = "ml"),
      "fresh cream" = list(quantity = 50, unit = "ml"),
      "sugar" = list(quantity = 1, unit = "ts")
    )
  ),
  "Long Island Ice Tea" = list(
    ingredients = list(
      "vodka" = list(quantity = 15, unit = "ml"),
      "tequila" = list(quantity = 15, unit = "ml"),
      "white rum" = list(quantity = 15, unit = "ml"),
      "gin" = list(quantity = 15, unit = "ml"),
      "cointreau" = list(quantity = 15, unit = "ml"),
      "lemon juice" = list(quantity = 30, unit = "ml"),
      "simple syrup" = list(quantity = 30, unit = "ml"),
      "Cola" = list(unit = "To top it off")
    )
  ),
  "Mimosa" = list(
    ingredients = list(
      "fresh orange juice" = list(quantity = 75, unit = "ml"),
      "prosecco" = list(quantity = 75, unit = "ml")
    )
  ),
  "Manhattan" = list(
    ingredients = list(
      "rye whiskey" = list(quantity = 50, unit = "ml"),
      "vermouth" = list(quantity = 20, unit = "ml"),
      "angostura bitter" = list(quantity = 1, unit = "dash")
    )
  ),
  "Moscow Mule" = list(
    ingredients = list(
      "vodka" = list(quantity = 45, unit = "ml"),
      "ginger beer" = list(quantity = 120, unit = "ml"),
      "fresh lime juice" = list(quantity = 10, unit = "ml")
    )
  ),
  "Naked and Famous" = list(
    ingredients = list(
      "mezcal" = list(quantity = 22.5, unit = "ml"),
      "yellow chartreuse" = list(quantity = 22.5, unit = "ml"),
      "aperol" = list(quantity = 22.5, unit = "ml"),
      "fresh lime juice" = list(quantity = 22.5, unit = "ml")
    )
  ),
  "Pina Colada" = list(
    ingredients = list(
      "white rum" = list(quantity = 50, unit = "ml"),
      "coconut cream" = list(quantity = 30, unit = "ml"),
      "fresh pineapple juice" = list(quantity = 50, unit = "ml")
    )
  ),
  "Penicillin" = list(
    ingredients = list(
      "blended scotch whisky" = list(quantity = 60, unit = "ml"),
      "lagavulin 16y whisky" = list(quantity = 7.5, unit = "ml"),
      "fresh lemon juice" = list(quantity = 22.5, unit = "ml"),
      "honey syrup" = list(quantity = 22.5, unit = "ml"),
      "sliced fresh ginger" = list(quantity = 2, unit = "cm")
    )
  ),
  "Paradise" = list(
    ingredients = list(
      "gin" = list(quantity = 30, unit = "ml"),
      "apricot brandy" = list(quantity = 20, unit = "ml"),
      "fresh orange juice" = list(quantity = 15, unit = "ml")
    )
  ),
  "Rusty Nail" = list(
    ingredients = list(
      "scotch whisky" = list(quantity = 45, unit = "ml"),
      "drambuie" = list(quantity = 25, unit = "ml")
    )
  ),
  "Sazerac" = list(
    ingredients = list(
      "cognac" = list(quantity = 50, unit = "ml"),
      "absinthe" = list(quantity = 10, unit = "ml"),
      "sugar cube" = list(quantity = 1, unit = "cube"),
      "peychaud's bitter" = list(quantity = 2, unit = "dashes")
    )
  ),
  "Sidecar" = list(
    ingredients = list(
      "cognac" = list(quantity = 50, unit = "ml"),
      "triple sec" = list(quantity = 20, unit = "ml"),
      "fresh lemon juice" = list(quantity = 20, unit = "ml")
    )
  ),
  "Stinger" = list(
    ingredients = list(
      "cognac" = list(quantity = 50, unit = "ml"),
      "white crème de menthe" = list(quantity = 20, unit = "ml")
    )
  ),
  "Vesper" = list(
    ingredients = list(
      "gin" = list(quantity = 45, unit = "ml"),
      "vodka" = list(quantity = 15, unit = "ml"),
      "lillet blanc" = list(quantity = 7.5, unit = "ml")
    )
  ),
  "Hurricane" = list(
    ingredients = list(
      "light rum" = list(quantity = 60, unit = "ml"),
      "dark rum" = list(quantity = 60, unit = "ml"),
      "lime juice" = list(quantity = 30, unit = "ml"),
      "orange juice" = list(quantity = 30, unit = "ml"),
      "passion fruit puree" = list(quantity = 15, unit = "ml"),
      "simple syrup" = list(quantity = 15, unit = "ml"),
      "grenadine" = list(quantity = 15, unit = "ml"),
      "orange wheel, preserved cherry" = list(unit = "garnish")
    )
  ),
  "Campari Spritz" = list(
    ingredients = list(
      "campari" = list(quantity = 60, unit = "ml"),
      "prosecco" = list(quantity = 90, unit = "ml"),
      "soda water" = list(quantity = 30, unit = "ml")
    )
  ),
  "Screwdriver" = list(
    ingredients = list(
      "vodka" = list(quantity = 45, unit = "ml"),
      "orange juice" = list(unit = "to top it off")
    )
  )
  
)

