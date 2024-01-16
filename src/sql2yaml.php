<?php
// Local database connection settings
$host = 'localhost';
$dbname = 'world-data';
$username = 'root';
$password = '';

try {
    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

    // Set PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    # Countries YAML
    // Select all data from the "world_countries" table
    $query = "SELECT * FROM world_countries";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $countries = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Create an empty array to store the YAML data
    $yamlData = [];

    // Loop through the data using foreach
    foreach ($countries as $country) {
        // Extract the alpha2 value
        $alpha2 = $country['alpha2'];

        // Add the country data to the YAML array using alpha2 as the key
        $yamlData[$alpha2] = $country;
    }

    // Convert the YAML array to YAML format
    $yaml = '';
    foreach ($yamlData as $key => $value) {
        $yaml .= "$key:\n";
        foreach ($value as $field => $data) {
            $yaml .= "  $field: $data\n";
        }
    }

    // Save the YAML data to a file
    file_put_contents('data/world_countries.yml', $yaml);

    # Currencies YAML
    // Select all data from the "world_currencies" table
    $query = "SELECT * FROM world_currencies";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $currencies = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Create an empty array to store the YAML data
    $yamlData = [];

    // Loop through the data using foreach
    foreach ($currencies as $currency) {
        // Extract the code value
        $code = $currency['alpha3'];

        // Add the currency data to the YAML array using code as the key
        $yamlData[$code] = $currency;
    }

    // Convert the YAML array to YAML format
    $yaml = '';
    foreach ($yamlData as $key => $value) {
        $yaml .= "$key:\n";
        foreach ($value as $field => $data) {
            $yaml .= "  $field: $data\n";
        }
    }

    // Save the YAML data to a file
    file_put_contents('data/world_currencies.yml', $yaml);
    
    # Languages YAML
    // Select all data from the "world_languages" table
    $query = "SELECT * FROM world_languages";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $languages = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Create an empty array to store the YAML data
    $yamlData = [];

    // Loop through the data using foreach
    foreach ($languages as $language) {
        // Extract the code value
        $code = $language['alpha2'];

        // Add the language data to the YAML array using code as the key
        $yamlData[$code] = $language;
    }

    // Convert the YAML array to YAML format
    $yaml = '';
    foreach ($yamlData as $key => $value) {
        $yaml .= "$key:\n";
        foreach ($value as $field => $data) {
            $yaml .= "  $field: $data\n";
        }
    }

    // Save the YAML data to a file
    file_put_contents('data/world_languages.yml', $yaml);
} catch (PDOException $e) {
    // Handle database connection errors
    echo "Connection failed: " . $e->getMessage();
}