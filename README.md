# Pokémon Kanto Region Pokédex

<p align="center">
  <img src="images/assets/team_rocket.webp" alt="Jessie and James of Team Rocket" width="400" />
  <br>
  <em>Jessie and James of Team Rocket</em> 
</p>

## About
The purpose of this project is to build a relational database and use SQL queries in R and Python to create visualizations. Focusing on the first generation of Pokémon from the Kanto region, the database includes information on all 151 Pokémon, similar to a Pokédex. The data covers attributes such as name, National Pokédex number, type, species, size, base stats, training information, and breeding details.

- Data Wrangling and Processing (R)
- Building a Relational Database (SQL)
- Querying and Data Visualization (R and Python)

## Repository Structure
```bash
kanto-pokedex
├── README.md
├── .gitignore
├── data_cleaning.qmd/.html
├── build_database.sql
├── kanto_database.duckdb
├── query_database.qmd/.html
├── query_database.ipynb
├── data
│   ├── raw
│   └── processed
└── images
    ├── assets
    └── plots
```

## Data
All datasets were obtained from existing GitHub repositories. The raw CSV files are stored in the `data/raw` subfolder. These files were cleaned in *data_cleaning.qmd* and saved to the `data/processed` subfolder. The processed CSV files were then used to build the relational database. The raw data, processed data, and database are all available for download in this repository.

To connect to the database in R
```{r}
# load packages
library(DBI)
library(duckdb)

# connect to kanto database
kanto_database <- dbConnect(duckdb(), dbdir = "kanto_database.duckdb")
```

To connect to the database in Python
```{python}
# import libraries
import duckdb

# connect to kanto database
kanto_database = duckdb.connect(database = "kanto_database.duckdb")
```

## References
christopher-cao. (2016). *Kanto Pokemon Spreadsheet.csv* [Dataset]. In *Pokemon-Simulator-in-Python* (Commit 80ee59e). GitHub. https://github.com/christopher-cao/Pokemon-Simulator-in-Python/blob/80ee59e/Kanto%20Pokemon%20Spreadsheet.csv. Accessed July 29, 2025.

pokeAPI. (2014). *egg_groups.csv* [Dataset]. In *pokeapi* (Commit 21a1d4b). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/egg_groups.csv. Accessed July 29, 2025.

pokeAPI. (2022). *growth_rate_prose.csv* [Dataset]. In *pokeapi* (Commit 48d8ab1). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/growth_rate_prose.csv. Accessed July 29, 2025.

pokeAPI. (2024). *pokemon_egg_groups.csv* [Dataset]. In *pokeapi* (Commit d7a7b5a). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/pokemon_egg_groups.csv. Accessed July 29, 2025.

pokeAPI. (2024). *pokemon_species_names.csv* [Dataset]. In *pokeapi* (Commit 2518b3e). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/pokemon_species_names.csv. Accessed July 29, 2025.

pokeAPI. (2025). *pokemon.csv* [Dataset]. In *pokeapi* (Commit e091bbc). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/pokemon.csv. Accessed July 29, 2025.

pokeAPI. (2025). *pokemon_species.csv* [Dataset]. In *pokeapi* (Commit e091bbc). GitHub. https://github.com/PokeAPI/pokeapi/blob/master/data/v2/csv/pokemon_species.csv. Accessed July 29, 2025.

## Acknowledgments
This project is inspired by the Pokédex, a high-tech, portable electronic encyclopedia carried by Pokémon trainers to record data after Pokémon encounters. The earliest design was modeled to match the shape and size of a book.

<p align="center">
  <img src="images/assets/kanto_pokdex.png" alt="Kanto Pokédex" width="250" />
  <br>
  <em>Kanto Pokédex</em> 
</p>
