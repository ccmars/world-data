import pandas as pd
import argparse
from html import escape

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def csv2html(csv_file_path, html_file_path, key_column, title):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)

    # Get the list of languages from the column names
    languages = [col for col in df.columns if col.startswith('lang')]

    with open(html_file_path, 'w', encoding='utf-8') as file:
        file.write('<!DOCTYPE html>\n')
        file.write('<html>\n')
        file.write('    <head>\n')
        file.write(f'        <title>{escape(title)}</title>\n')
        file.write('    </head>\n')
        file.write('    <body>\n')
        file.write(f'        <h1>{escape(title)}</h1>\n')
        file.write(f'        <h2>HTML | {args.version_string}</h2>\n')
        file.write('        <h2><a href="https://github.com/ccmars/world-data" target="_blank">https://github.com/ccmars/world-data</a></h2>\n\n')

        for lang in languages:
            file.write(f'        <select name="{lang}">\n')
            # Sort the DataFrame by the current language column
            sorted_df = df.sort_values(by=lang)
            for index, row in sorted_df.iterrows():
                file.write(f'            <option value="{escape(row[key_column])}">{escape(row[lang])}</option>\n')
            file.write('        </select>\n\n')

        file.write('    </body>\n')
        file.write('</html>\n')

csv2html('src/data/world_countries.csv',
    'dist/html/world_countries.html',
    'alpha2',
    'World Countries (ISO 3166)'
)
csv2html('src/data/world_currencies.csv',
    'dist/html/world_currencies.html',
    'alpha3',
    'World Currencies (ISO 4217)'
)
csv2html('src/data/world_languages.csv',
    'dist/html/world_languages.html',
    'alpha2',
    'World Languages (ISO 639)'
)