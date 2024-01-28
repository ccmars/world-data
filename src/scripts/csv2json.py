import pandas as pd
import json

def csv2json(csv_file_path, json_file_path, key_column):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=[''])  # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = {row[key_column]: row.to_dict() for index, row in df.iterrows()}
    with open(json_file_path, 'w') as file:
        json.dump(data, file, indent=2)

csv2json('src/data/world_countries.csv', 'dist/json/world_countries.json', 'alpha2')
csv2json('src/data/world_currencies.csv', 'dist/json/world_currencies.json', 'alpha3')
csv2json('src/data/world_languages.csv', 'dist/json/world_languages.json', 'alpha2')