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

    # Countries CSV
    // Select all data from the "world_countries" table
    $query = "SELECT * FROM world_countries";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $countries = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Open a CSV file for writing
    $file = fopen('../data/world_countries.csv', 'w');

    // Write the header row to the CSV file
    if (!empty($countries)) {
        fputcsv($file, array_keys($countries[0]));
    }

    // Write the data rows to the CSV file
    foreach ($countries as $country) {
        fputcsv($file, $country);
    }

    // Close the CSV file
    fclose($file);

    # Currencies CSV
    // Select all data from the "world_currencies" table
    $query = "SELECT * FROM world_currencies";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $currencies = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Open a CSV file for writing
    $file = fopen('../data/world_currencies.csv', 'w');

    // Write the header row to the CSV file
    if (!empty($currencies)) {
        fputcsv($file, array_keys($currencies[0]));
    }

    // Write the data rows to the CSV file
    foreach ($currencies as $currency) {
        fputcsv($file, $currency);
    }

    // Close the CSV file
    fclose($file);

    # Languages CSV
    // Select all data from the "world_languages" table
    $query = "SELECT * FROM world_languages";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $languages = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Open a CSV file for writing
    $file = fopen('../data/world_languages.csv', 'w');

    // Write the header row to the CSV file
    if (!empty($languages)) {
        fputcsv($file, array_keys($languages[0]));
    }

    // Write the data rows to the CSV file
    foreach ($languages as $language) {
        fputcsv($file, $language);
    }

    // Close the CSV file
    fclose($file);
} catch (PDOException $e) {
    // Handle database connection errors
    echo "Connection failed: " . $e->getMessage();
}