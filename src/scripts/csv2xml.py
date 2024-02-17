import pandas as pd
import xml.etree.ElementTree as ET
import xml.dom.minidom
import argparse

# Parse command-line arguments
parser = argparse.ArgumentParser()
parser.add_argument("version_string")
args = parser.parse_args()

def prettifyXml(elem):
    rough_string = ET.tostring(elem, 'utf-8')
    reparsed = xml.dom.minidom.parseString(rough_string)
    return reparsed.toprettyxml(indent="  ")

def csv2xml(csv_file_path, xml_file_path, key_column, root_element_name, comment1):
    df = pd.read_csv(csv_file_path, keep_default_na=False, na_values=[''])  # Treat only empty strings as NaN
    df = df.where(pd.notnull(df), None) # Convert NaNs to None (null)
    data = {row[key_column]: row.to_dict() for index, row in df.iterrows()} # Use key_column as key for each row

    root = ET.Element(root_element_name)
    comment1 = ET.Comment(comment1)
    root.append(comment1)
    comment2 = ET.Comment('XML | ' + args.version_string)
    root.append(comment2)
    comment3 = ET.Comment('https://github.com/ccmars/world-data')
    root.append(comment3)
    
    for key, value in data.items():
        item = ET.SubElement(root, str(key))
        for subkey, subvalue in value.items():
            ET.SubElement(item, subkey).text = str(subvalue)

    pretty_xml = prettifyXml(root)
    with open(xml_file_path, 'w', encoding='utf-8') as file:
        file.write(pretty_xml)

csv2xml(
    'src/data/world_countries.csv',
    'dist/xml/world_countries.xml',
    'alpha2',
    'countries',
    'World Countries (ISO 3166)'
)
csv2xml(
    'src/data/world_currencies.csv',
    'dist/xml/world_currencies.xml',
    'alpha3',
    'currencies',
    'World Currencies (ISO 4217)'
)
csv2xml(
    'src/data/world_languages.csv',
    'dist/xml/world_languages.xml',
    'alpha2',
    'languages',
    'World Languages (ISO 639)'
)