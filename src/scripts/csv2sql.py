import pandas as pd
import argparse
import os

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def format_sql_value(value):
    if value is None:
        return "NULL"
    elif isinstance(value, str):
        return "'" + value.replace("'", "''") + "'"
    else:
        return str(value)

def csv2sql(csv_file_path, sql_file_path, table_name, key_column, title):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    df = df.map(format_sql_value) # Apply the format_sql_value function to each cell in the DataFrame

    with open(sql_file_path, 'w', encoding='utf8') as file:
        file.write(f'-- {title}\n')
        file.write(f'-- SQL Table | {args.version_string}\n')
        file.write('-- https://github.com/ccmars/world-data\n\n')

        file.write(f'DROP TABLE IF EXISTS `{table_name}`;\n')
        file.write(f'CREATE TABLE `{table_name}` (\n')
        for column in df.columns:
            if column == 'number':
                sql_type = 'smallint NOT NULL'
            elif column.startswith('alpha'):
                alpha_num = column[len('alpha'):]
                sql_type = f'varchar({alpha_num}) NOT NULL'
            elif column == 'decimals':
                sql_type = "tinyint NOT NULL DEFAULT '2'"
            elif column.startswith('lang'):
                sql_type = 'varchar(48) NOT NULL'
            elif column == 'tld':
                sql_type = 'varchar(4) NOT NULL'
            elif column.startswith('symbol'):
                sql_type = 'varchar(24) DEFAULT NULL'
            else:
                sql_type = 'varchar(64) NOT NULL'
            file.write(f'  `{column}` {sql_type},\n')
        file.seek(file.tell() - 3, os.SEEK_SET)  # Remove the trailing comma
        file.write(f'\n) ENGINE=MyISAM DEFAULT CHARSET=UTF8MB4 COMMENT=\'{title}\';\n\n')

        file.write(f'INSERT INTO `{table_name}` ({", ".join(f"`{column}`" for column in df.columns)}) VALUES\n')
        for index, row in df.iterrows():
            file.write('(' + ', '.join(value for value in row.values) + '),\n')
        file.seek(file.tell() - 3, os.SEEK_SET)
        file.write(';\n')

        file.write('\nALTER TABLE `{}`\n'.format(table_name))
        file.write('  ADD PRIMARY KEY (`{}`),\n'.format(key_column))
        for column in df.columns:
            if column == 'number' or column.startswith('alpha'):
                file.write('  ADD UNIQUE (`{}`),\n'.format(column))
        file.seek(file.tell() - 3, os.SEEK_SET)
        file.write(';\n')

csv2sql('src/data/world_countries.csv',
    'dist/sql/world_countries.sql',
    'world_countries',
    'number',
    'World Countries (ISO 3166)',
)
csv2sql('src/data/world_currencies.csv',
    'dist/sql/world_currencies.sql',
    'world_currencies',
    'number',
    'World Currencies (ISO 4217)',
)
csv2sql('src/data/world_languages.csv',
    'dist/sql/world_languages.sql',
    'world_languages',
    'alpha2',
    'World Languages (ISO 639)',
)