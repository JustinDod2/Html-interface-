<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $Firstname = $_POST['Firstname'];
    $Lastname = $_POST['Lastname'];
    $Email = $_POST['email'];
    $Address = $_POST['Address'];
    $City = $_POST['City'];
    $Phone = $_POST['phone'];
    $Birthdate = $_POST['birthdate'];
    $FavoriteDish = $_POST['favorite_dish']; // changed from 'favorite dish' to 'favorite_dish'

    $sql = "INSERT INTO customer (FirstName, LastName, Email, Address, City, Phone, Birthdate, FavoriteDish) 
            VALUES ('$Firstname', '$Lastname', '$Email', '$Address', '$City', '$Phone', '$Birthdate', '$FavoriteDish')"; // fixed variable names and added single quotes around string values

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InsertViableSCustomer</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Add Viable customer Details</h1>
    <div class="container">
        <form method="post" action="create.php">
            FirstName: <input type="text" name="Firstname" required><br><br>
            LastName: <input type="text" name="Lastname" required><br><br> <!-- Fixed typo in LastName -->
            Email: <input type="email" name="email" required><br><br> <!-- Changed input type to email for better validation -->
            Address: <input type="text" name="Address" required><br><br>
            City: <input type="text" name="City" required><br><br>
            Phone: <input type="tel" name="phone" required><br><br> <!-- Changed input type to tel for better validation -->
            Birthdate: <input type="date" name="birthdate" required><br><br>
            Favorite Dish: <input type="text" name="favorite_dish" required><br><br> <!-- Changed name to favorite_dish for consistency -->
            <input type="submit" value="Add">
        </form>
    </div>
</body>
</html>
