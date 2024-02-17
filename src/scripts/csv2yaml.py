import pandas as pd
import yaml
import argparse

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def csv2yaml(csv_file_path, yaml_file_path, key_column, comment1):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = {row[key_column]: row.to_dict() for index, row in df.iterrows()} # Use key_column as key for each row
    with open(yaml_file_path, 'w', encoding='utf-8') as file:
        file.write('# ' + comment1 + "\n")
        file.write('# YAML | ' + args.version_string + "\n")
        file.write('# https://github.com/ccmars/world-data' + "\n")
        yaml.dump(data, file)

csv2yaml('src/data/world_countries.csv',
    'dist/yml/world_countries.yml',
    'alpha2',
    'World Countries (ISO 3166)'
)
csv2yaml('src/data/world_currencies.csv',
    'dist/yml/world_currencies.yml',
    'alpha3',
    'World Currencies (ISO 4217)'
)
csv2yaml('src/data/world_languages.csv',
    'dist/yml/world_languages.yml',
    'alpha2',
    'World Languages (ISO 639)'
)