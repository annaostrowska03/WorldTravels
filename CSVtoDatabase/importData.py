import pandas as pd
from sqlalchemy import create_engine
'''
csv_file = "worldcities.csv"
df = pd.read_csv(csv_file)

engine = create_engine(
    "mssql+pyodbc://sa:ania1111@DESKTOP-JOTNM8I\\MSSQLSERVER2/vacation_cities?driver=ODBC+Driver+17+for+SQL+Server"
)

table_name = "cities_population"
df.to_sql(table_name, engine, if_exists="replace", index=False)

print(f"Dane zostały zaimportowane do tabeli '{table_name}' w bazie danych.")

csv_file2= "countries_continents.csv"
df2 = pd.read_csv(csv_file2)
table_name = "countries_continents"
df2.to_sql(table_name, engine, if_exists="replace", index=False)

print(f"Dane zostały zaimportowane do tabeli '{table_name}' w bazie danych.")

csv_file5= "Cost_of_Living_Index_by_Country_2024.csv"
df5 = pd.read_csv(csv_file5)
engine = create_engine(
    "mssql+pyodbc://sa:ania1111@DESKTOP-JOTNM8I\\MSSQLSERVER2/vacation_cities?driver=ODBC+Driver+17+for+SQL+Server"
)
table_name = "cost_index_cities"
df5.to_sql(table_name, engine, if_exists="replace", index=False)

csv_file6= "temp.csv"
df6 = pd.read_csv(csv_file6)
engine = create_engine(
    "mssql+pyodbc://sa:ania1111@DESKTOP-JOTNM8I\\MSSQLSERVER2/vacation_cities?driver=ODBC+Driver+17+for+SQL+Server"
)'''
table_name = "cities_temperature_csv"
df5.to_sql(table_name, engine, if_exists="replace", index=False)


#%%
