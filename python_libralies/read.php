<?php
include 'config.php';

$sql = "SELECT * FROM customer";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Customer Records</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>View Customer Records</h1>
    <table border="1">
        <tr>
            <th>customerID</th>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Address</th>
            <th>City</th>
            <th>Phone</th>
            <th>Birthdate</th>
            <th>FavoriteDish</th>
            <th>Actions</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['customerID']}</td>
                        <td>{$row['FirstName']}</td>
                        <td>{$row['LastName']}</td>
                        <td>{$row['Email']}</td>
                        <td>{$row['Address']}</td>
                        <td>{$row['City']}</td>
                        <td>{$row['Phone']}</td>
                        <td>{$row['Birthdate']}</td>
                        <td>{$row['FavoriteDish']}</td>
                        <td>
                            <a href='update.php?id={$row['customerID']}'>Edit</a> |
                            <a href='delete.php?id={$row['customerID']}' onclick='return confirm(\"Are you sure?\")'>Delete</a>
                        </td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='10'>No records found</td></tr>";
        }
        ?>
    </table>
</body>
</html>
