World Data (ISO Standards) - SQL Tables
=======================================

Any developer that works with an international user base will eventually need to determine what country their users are from, what language they speak and read, and sometimes even what currency their users make purchases in. The best way to keep track of that information is to follow the standards set forth by the [International Organization for Standardization (ISO)](http://www.iso.org/), which have become universally accepted since their development in the 1960s and 1970s. The SQL queries compiled here will populate a database with tables containing country, currency, and language data based on ISO standards.

World Countries ([ISO 3166](http://www.iso.org/iso/home/standards/country_codes.htm))
--------------------------

The countries table contains the following data:

> `[integer]` **number**: [Numeric code](https://en.wikipedia.org/wiki/ISO_3166-1_numeric) of the country

> `[string]` **alpha2**: [Two-letter code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country

> `[string]` **alpha3**: [Three-letter code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) of the country

> `[string]` **langEN**: English name of the country

> `[string]` **langDE**: German name of the country

> `[string]` **langES**: Spanish name of the country

> `[string]` **langFR**: French name of the country

> `[string]` **langIT**: Italian name of the country

> `[string]` **tld**: [Country code top-level domain (ccTLD)](https://en.wikipedia.org/wiki/Country_code_top-level_domain) of the country

World Currencies ([ISO 4217](http://www.iso.org/iso/home/standards/currency_codes.htm))
---------------------------

The currencies table contains the following data:

> `[integer]` **number**: Numeric code of the currency

> `[string]` **alpha3**: [Three-letter code](https://en.wikipedia.org/wiki/ISO_4217) of the currency

> `[integer]` **decimals**: Number of digits after the decimal

> `[string]` **langEN**: English name of the currency

> `[string]` **langIT**: Italian name of the currency

> `[string]` **symbol_decimal**: Symbol of the currency in decimal [numeric character reference](https://en.wikipedia.org/wiki/Numeric_character_reference) codes, separated by semi-colons (;) if the symbol consists of multiple characters. For example, in HTML, turn the number `36` into `&#36;` to output a dollar symbol ($).

> `[string]` **symbol_hex**: Symbol of the currency in hexadecimal [numeric character reference](https://en.wikipedia.org/wiki/Numeric_character_reference) codes, separated by semi-colons (;) if the symbol consists of multiple characters. For example, in HTML, turn the string `0024` into `&#x0024;` to output a dollar symbol ($). To achieve the same in JavaScript, use `\u0024`, and in CSS, use `\0024`.

World Languages ([ISO 639](http://www.iso.org/iso/home/standards/language_codes.htm))
-------------------------

The languages table contains the following data:

> `[string]` **alpha2**: [Two-letter code](https://en.wikipedia.org/wiki/ISO_639-1) of the language

> `[string]` **langEN**: English name of the language

> `[string]` **langDE**: German name of the language

> `[string]` **langES**: Spanish name of the language

> `[string]` **langFR**: French name of the language

> `[string]` **langIT**: Italian name of the language