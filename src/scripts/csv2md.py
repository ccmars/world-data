import pandas as pd
import argparse

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def csv2md(csv_file_path, md_file_path, index_col, title):
    df = pd.read_csv(csv_file_path, index_col=index_col, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    with open(md_file_path, 'w', encoding='utf-8') as file:
        file.write('# ' + title + "\n")
        file.write('## Markdown | ' + args.version_string + ' | https://github.com/ccmars/world-data' + "\n")
        file.write(df.to_markdown())

csv2md(
    'src/data/world_countries.csv', 
    'dist/md/world_countries.md', 
    'number', 
    'World Countries (ISO 3166)'
)

csv2md(
    'src/data/world_currencies.csv', 
    'dist/md/world_currencies.md', 
    'alpha3', 
    'World Currencies (ISO 4217)'
)

csv2md(
    'src/data/world_languages.csv', 
    'dist/md/world_languages.md', 
    'alpha2', 
    'World Languages (ISO 639)'
)