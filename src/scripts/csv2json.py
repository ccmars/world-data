import pandas as pd
import json

def csv2json(csv_file_path, json_file_path):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=[''])  # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = df.to_dict(orient='records')
    with open(json_file_path, 'w') as file:
        json.dump(data, file, indent=2)

csv2json('src/data/world_countries.csv', 'dist/json/world_countries.json')
csv2json('src/data/world_currencies.csv', 'dist/json/world_currencies.json')
csv2json('src/data/world_languages.csv', 'dist/json/world_languages.json')