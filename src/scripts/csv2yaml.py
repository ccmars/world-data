import pandas as pd
import yaml

def csv2yaml(csv_file_path, yaml_file_path, key_column):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=[''])  # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = {row[key_column]: row.to_dict() for index, row in df.iterrows()}
    with open(yaml_file_path, 'w') as file:
        yaml.dump(data, file)

csv2yaml('src/data/world_countries.csv', 'dist/yml/world_countries.yml', 'alpha2')
csv2yaml('src/data/world_currencies.csv', 'dist/yml/world_currencies.yml', 'alpha3')
csv2yaml('src/data/world_languages.csv', 'dist/yml/world_languages.yml', 'alpha2')