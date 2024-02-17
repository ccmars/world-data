<?php
// Local database connection settings
$host = 'localhost';
$dbname = 'world-data';
$username = 'root';
$password = '';

function sql($pdo, $tableName, $filePath) {
    // List of allowed table names
    $allowedTableNames = ['world_countries', 'world_currencies', 'world_languages'];

    if (in_array($tableName, $allowedTableNames)) {
        $query = "SELECT * FROM $tableName";
        $statement = $pdo->query($query);
    } else {
        throw new Exception("Invalid table name: $tableName");
    }
    
    // Select all data from the table
    $query = "SELECT * FROM $tableName";
    $statement = $pdo->query($query);

    // Fetch all rows into an array
    $data = $statement->fetchAll(PDO::FETCH_ASSOC);

    // Open a CSV file for writing
    $file = fopen($filePath, 'w');

    // Write the header row to the CSV file
    if (!empty($data)) {
        fputcsv($file, array_keys($data[0]));
    }

    // Write the data rows to the CSV file
    foreach ($data as $row) {
        fputcsv($file, $row);
    }

    // Close the CSV file
    fclose($file);
}

try {
    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

    // Set PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Query each table and write to CSV
    sql($pdo, 'world_countries', '../data/world_countries.csv');
    sql($pdo, 'world_currencies', '../data/world_currencies.csv');
    sql($pdo, 'world_languages', '../data/world_languages.csv');
} catch (PDOException $e) {
    // Handle database connection errors
    echo "Connection failed: " . $e->getMessage();
}