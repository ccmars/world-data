import pandas as pd
from openpyxl import load_workbook

def csv2xlsx(csv_file_path, xlsx_file_path, sheet_name):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=['']) # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    df.to_excel(xlsx_file_path, index=False, sheet_name=sheet_name)

    book = load_workbook(xlsx_file_path)
    book.properties.creator = "github.com/ccmars/world-data"
    book.save(xlsx_file_path)

csv2xlsx(
    'src/data/world_countries.csv', 
    'dist/xlsx/world_countries.xlsx', 
    'World Countries (ISO 3166)'
)

csv2xlsx(
    'src/data/world_currencies.csv', 
    'dist/xlsx/world_currencies.xlsx', 
    'World Currencies (ISO 4217)'
)

csv2xlsx(
    'src/data/world_languages.csv', 
    'dist/xlsx/world_languages.xlsx', 
    'World Languages (ISO 639)'
)