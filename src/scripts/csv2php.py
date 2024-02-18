import pandas as pd
import argparse

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def to_php_array(data, indent=''):
    new_indent = "    ";
    if isinstance(data, dict):
        items = []
        for key, value in data.items():
            items.append(f'"{key}" => {to_php_array(value, indent + new_indent)}')
        return "[\n" + ",\n".join(indent + new_indent + item for item in items) + "\n" + indent + "]"
    elif isinstance(data, list):
        items = [to_php_array(value, indent + new_indent) for value in data]
        return "[\n" + ",\n".join(indent + new_indent + item for item in items) + "\n" + indent + "]"
    elif data is None:
        return "null"
    else:
        return f'"{data}"'

def csv2php(csv_file_path, php_file_path, var_name, key_column, title):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = {row[key_column]: row.to_dict() for index, row in df.iterrows()} # Use key_column as key for each row
    with open(php_file_path, 'w', encoding='utf-8') as file:
        file.write('<?php\n')
        file.write('// ' + title + "\n")
        file.write('// PHP | ' + args.version_string + "\n")
        file.write('// https://github.com/ccmars/world-data' + "\n")
        file.write(f'${var_name} = ' + to_php_array(data) + ";\n")

csv2php('src/data/world_countries.csv',
    'dist/php/world_countries.php',
    'world_countries',
    'alpha2',
    'World Countries (ISO 3166)',
)
csv2php('src/data/world_currencies.csv',
    'dist/php/world_currencies.php',
    'world_currencies',
    'alpha3',
    'World Currencies (ISO 4217)',
)
csv2php('src/data/world_languages.csv',
    'dist/php/world_languages.php',
    'world_languages',
    'alpha2',
    'World Languages (ISO 639)',
)