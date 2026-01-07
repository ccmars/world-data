# Changelog

All notable changes to this project will be documented in this file.

## [v3.0.2 (2026)] - 2026-01-06

### Changes

#### Currencies
- Removed BGN (Bulgarian Lev)
- Removed ZWL (Zimbabwean dollar)
- Added ZWG (Zimbabwe Gold)

#### Countries
- Changed Turkey to Türkiye

---

## [v3.0.1 (2025)] - 2025-01-16

### Changes
- Added `pyyaml` and `tabulate` as additional script generation requirements

#### Currencies
- Changed Belarusian ruble to two decimal places
- Changed Cape Verdean escudo to two decimal places
- Changed Malagasy ariary to two decimal places
- Changed Burmese kyat to Myanmar kyat
- Changed Mauritanian ouguiya to two decimal places
- Removed Sierra Leonean old leone
- Changed Sierra Leonean new leone to Sierra Leonean leone
- Changed Somali shilling to Somalian shilling
- Changed Uzbekistan som to Uzbekistani sum

---

## [v3.0.0 (2024)] - 2024-02-17

### Changes
In addition to the original SQL, world data is available in **CSV, HTML, JSON, Markdown, PHP, Microsoft Excel, XML, and YAML formats**.

#### Data Generation
Source data is contained in CSV files, and Python scripts convert the source data into additional data formats.

---

## [v2.1.3 (2024)] - 2023-12-31

### Changes
- Values are now escaped in a more standard way

#### Countries
- Changed Åland Islands to Åland

#### Currencies
- Removed Cuban convertible peso
- Added symbols for Armenian dram
- Added symbols for Moldovan leu
- Added symbols for Tajikistani somoni
- Added symbols for CFA franc BEAC
- Added symbols for CFA Franco BCEAO

---

## [v2.1.2 (2023)] - 2023-01-31

### Changes

#### Currencies
- Changed Chinese yaun to Renminbi
- Removed Croatian kuna
- Added Sierra Leonean new leone
- Changed Sierra Leonean leone to Sierra Leonean old leone
- Added Venezuelan digital bolívar
- Changed Venezuelan bolívar soberano to Venezuelan sovereign bolívar

---

## [v2.1.0 (2022)] - 2022-08-18

### Changes

#### New Supported Language
- **Italian**

---

## [v2.0.4 (2022)] - 2022-06-01

### Changes

#### Languages
- Removed Bihari
- Fixed an issue with Spanish and French names for languages being swapped

---

## [v2.0.3 (2022)] - 2021-12-31

### Changes

#### Languages
- Removed Bihari

---

## [v2.0.2 (2021)] - 2021-09-17

### Changes

#### Countries
- Czech Republic changed to Czechia
- Macedonia changed to North Macedonia
- Swaziland changed to Eswatini
- Vatican City changed to Holy See

#### Currency
- Updated numbers and three-letter designations for Belarusian ruble, Mauritanian ouguiya, São Tomé and Príncipe dobra, and Venezuelan bolívar soberano
- Added Salvadoran colón and Zimbabwean dollar

#### Languages
- Removed "or" parentheticals for the names of languages in French

---

## [v2.0.0] - 2016-07-02

### Changes
- Added hexadecimal numeric character reference codes for currency symbols (symbol_hex) to the world currencies table

---

## [v1.0.0] - 2016-05-30

Initial release of SQL tables containing world countries (ISO 3166), world currencies (ISO 4217), and world languages (ISO 639).
