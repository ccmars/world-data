![World Data](logo.svg)

🌐 World Data (ISO Standards)
=======================================

Any developer that works with an international user base will eventually need to determine what country their users are from, what language they speak and read, and sometimes even what currency their users make purchases in. The best way to keep track of that information is to follow the standards set forth by the [International Organization for Standardization (ISO)](http://www.iso.org/), which have become universally accepted since their development in the 1960s and 1970s.

This repository contains the 2024 ISO standard data for countries, currencies, and languages, in a variety of the most common data formats, including CSV, SQL, JSON, XML, YAML, and more.

🗂️ Formats
----------

World data is available in the following formats:

### CSV

- [/src/data/world_countries.csv](https://github.com/ccmars/world-data/blob/master/src/data/world_countries.csv)
- [/src/data/world_currencies.csv](https://github.com/ccmars/world-data/blob/master/src/data/world_currencies.csv)
- [/src/data/world_languages.csv](https://github.com/ccmars/world-data/blob/master/src/data/world_languages.csv)

### HTML

- [/dist/html/world_countries.html](https://github.com/ccmars/world-data/blob/master/dist/html/world_countries.html)
- [/dist/html/world_currencies.html](https://github.com/ccmars/world-data/blob/master/dist/html/world_currencies.html)
- [/dist/html/world_languages.html](https://github.com/ccmars/world-data/blob/master/dist/html/world_languages.html)

### JSON

- [/dist/json/world_countries.json](https://github.com/ccmars/world-data/blob/master/dist/json/world_countries.json)
- [/dist/json/world_currencies.json](https://github.com/ccmars/world-data/blob/master/dist/json/world_currencies.json)
- [/dist/json/world_languages.json](https://github.com/ccmars/world-data/blob/master/dist/json/world_languages.json)

### Markdown

- [/dist/md/world_countries.md](https://github.com/ccmars/world-data/blob/master/dist/md/world_countries.md)
- [/dist/md/world_currencies.md](https://github.com/ccmars/world-data/blob/master/dist/md/world_currencies.md)
- [/dist/md/world_languages.md](https://github.com/ccmars/world-data/blob/master/dist/md/world_languages.md)

### PHP

- [/dist/php/world_countries.php](https://github.com/ccmars/world-data/blob/master/dist/php/world_countries.php)
- [/dist/php/world_currencies.php](https://github.com/ccmars/world-data/blob/master/dist/php/world_currencies.php)
- [/dist/php/world_languages.php](https://github.com/ccmars/world-data/blob/master/dist/php/world_languages.php)

### SQL

- [/dist/sql/world_countries.sql](https://github.com/ccmars/world-data/blob/master/dist/sql/world_countries.sql)
- [/dist/sql/world_currencies.sql](https://github.com/ccmars/world-data/blob/master/dist/sql/world_currencies.sql)
- [/dist/sql/world_languages.sql](https://github.com/ccmars/world-data/blob/master/dist/sql/world_languages.sql)

### Microsoft Excel (XLSX)

- [/dist/xlsx/world_countries.xlsx](https://github.com/ccmars/world-data/blob/master/dist/xlsx/world_countries.xlsx)
- [/dist/xlsx/world_currencies.xlsx](https://github.com/ccmars/world-data/blob/master/dist/xlsx/world_currencies.xlsx)
- [/dist/xlsx/world_languages.xlsx](https://github.com/ccmars/world-data/blob/master/dist/xlsx/world_languages.xlsx)

### XML

- [/dist/xml/world_countries.xml](https://github.com/ccmars/world-data/blob/master/dist/xml/world_countries.xml)
- [/dist/xml/world_currencies.xml](https://github.com/ccmars/world-data/blob/master/dist/xml/world_currencies.xml)
- [/dist/xml/world_languages.xml](https://github.com/ccmars/world-data/blob/master/dist/xml/world_languages.xml)

### YAML

- [/dist/yml/world_countries.yml](https://github.com/ccmars/world-data/blob/master/dist/yml/world_countries.yml)
- [/dist/yml/world_currencies.yml](https://github.com/ccmars/world-data/blob/master/dist/yml/world_currencies.yml)
- [/dist/yml/world_languages.yml](https://github.com/ccmars/world-data/blob/master/dist/yml/world_languages.yml)

💽 Data
-------

### 🌍 World Countries ([ISO 3166](http://www.iso.org/iso/home/standards/country_codes.htm))

The countries dataset contains the following data:

> `[integer]` **number**: [Numeric code](https://en.wikipedia.org/wiki/ISO_3166-1_numeric) of the country

> `[string]` **alpha2**: [Two-letter code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country

> `[string]` **alpha3**: [Three-letter code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) of the country

> `[string]` **langEN**: English name of the country

> `[string]` **langDE**: German name of the country

> `[string]` **langES**: Spanish name of the country

> `[string]` **langFR**: French name of the country

> `[string]` **langIT**: Italian name of the country

> `[string]` **tld**: [Country code top-level domain (ccTLD)](https://en.wikipedia.org/wiki/Country_code_top-level_domain) of the country

### 💵 World Currencies ([ISO 4217](http://www.iso.org/iso/home/standards/currency_codes.htm))

The currencies dataset contains the following data:

> `[integer]` **number**: Numeric code of the currency

> `[string]` **alpha3**: [Three-letter code](https://en.wikipedia.org/wiki/ISO_4217) of the currency

> `[integer]` **decimals**: Number of digits after the decimal

> `[string]` **langEN**: English name of the currency

> `[string]` **langIT**: Italian name of the currency

> `[string]` **symbol_decimal**: Symbol of the currency in decimal [numeric character reference](https://en.wikipedia.org/wiki/Numeric_character_reference) codes, separated by semi-colons (;) if the symbol consists of multiple characters. For example, in HTML, turn the number `36` into `&#36;` to output a dollar symbol ($).

> `[string]` **symbol_hex**: Symbol of the currency in hexadecimal [numeric character reference](https://en.wikipedia.org/wiki/Numeric_character_reference) codes, separated by semi-colons (;) if the symbol consists of multiple characters. For example, in HTML, turn the string `0024` into `&#x0024;` to output a dollar symbol ($). To achieve the same in JavaScript, use `\u0024`, and in CSS, use `\0024`.

### 🗣️ World Languages ([ISO 639](http://www.iso.org/iso/home/standards/language_codes.htm))

The languages dataset contains the following data:

> `[string]` **alpha2**: [Two-letter code](https://en.wikipedia.org/wiki/ISO_639-1) of the language

> `[string]` **langEN**: English name of the language

> `[string]` **langDE**: German name of the language

> `[string]` **langES**: Spanish name of the language

> `[string]` **langFR**: French name of the language

> `[string]` **langIT**: Italian name of the language

✅ Contributions
----------------

Need this data in another language or format? Pull requests for additional language translations or additional data formats will be gladly accepted.

### Source Data

The source data for this repository is kept in CSV format in the `/src/data` directory. If you would like to contribute a new language translation or correct a content issue, this is where the data should be adjusted.

### Conversion Scripts for New Formats

Conversion scripts are written in Python and located in the `/src/scripts` directory. If you would like to contribute a new format, this is where the conversion script should be added. These scripts convert the source CSV data into various formats available in the `/dist` directory. 

### Finalizing Your Contribution

Before running the main script to generate updated data, please ensure that you have installed the necessary dependencies. You can do this by running the following command:

```bash
pip install -r src/requirements.txt
```

In `src/main.py`, increase the *minor version* by one (or *patch version* by one if no new languages or formats were added) in the `version_string` variable, and then run the main script to complete the data generation process:

```bash:
python3 src/main.py
```

Finally, submit a pull request with your changes and it will be reviewed promptly. Thank you for your contribution!