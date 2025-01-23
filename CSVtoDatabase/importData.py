import pandas as pd
from sqlalchemy import create_engine

csv_file = "worldcities.csv"
df = pd.read_csv(csv_file)

engine = create_engine(
    "connectionString"
)

table_name = "cities_population"
df.to_sql(table_name, engine, if_exists="replace", index=False)

print(f"Data imported to '{table_name}'.")

csv_file2= "countries_continents.csv"
df2 = pd.read_csv(csv_file2)
table_name = "countries_continents"
df2.to_sql(table_name, engine, if_exists="replace", index=False)

print(f"Data imported to '{table_name}'.")

csv_file5= "Cost_of_Living_Index_by_Country_2024.csv"
df5 = pd.read_csv(csv_file5)
engine = create_engine(
    "connectionString")
table_name = "cost_index_cities"
df5.to_sql(table_name, engine, if_exists="replace", index=False)

print(f"Data imported to '{table_name}'.")
