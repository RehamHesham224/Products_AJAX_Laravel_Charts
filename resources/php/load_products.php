<?php
// Replace these values with your actual database credentials
$hostname = "localhost";
$username = "root";
$password = "";
$database = "soin";

$itemsPerPage = $_GET['itemsPerPage'];
$offset = ($_GET['page'] - 1) * $itemsPerPage;

// Establish database connection
$connection = mysqli_connect($hostname, $username, $password, $database);

// Check if the connection was successful
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Fetch products from the database
$sql = "SELECT * FROM dummy LIMIT $offset, $itemsPerPage";

$result = mysqli_query($connection, $sql);

// Process the fetched data
$output = '';
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        $output .= "<div class='product'>";
        $output .= "<h3>{$row['product']}</h3>";
        $output .= "<p>Category: {$row['category']}</p>";
        $output .= "<p>Brand: {$row['brand']}</p>";
        $output .= "</div>";
    }
} else {
    $output = ""; // Empty string indicates no more items to load
}

echo $output;

// Close the database connection
mysqli_close($connection);
?>
