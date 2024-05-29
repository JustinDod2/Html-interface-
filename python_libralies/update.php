<?php
include 'config.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $email = $_POST['email'];
        $address = $_POST['address'];
        $city = $_POST['city'];
        $phone = $_POST['phone'];
        $birthday = $_POST['birthday'];
        $favoriteDish = $_POST['favoriteDish'];

        // Check if password is provided and hash it
        $password = "";
        if (!empty($_POST['password'])) {
            $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        }

        // Update query based on whether password is provided or not
        $sql = "UPDATE customer SET FirstName='$firstname', LastName='$lastname', Email='$email', Address='$address', City='$city', Phone='$phone', Birthday='$birthday', FavoriteDish='$favoriteDish'";
        if (!empty($password)) {
            $sql .= ", Password='$password'";
        }
        $sql .= " WHERE CustomerID=$id";

        if ($conn->query($sql) === TRUE) {
            echo "Record updated successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    // Fetch the customer record
    $sql = "SELECT * FROM customer WHERE customerID=$id";
    $result = $conn->query($sql);

    // Check if the query was successful
    if ($result) {
        // Fetch the record
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
        } else {
            die("Record not found.");
        }
    } else {
        die("Error: " . $sql . "<br>" . $conn->error);
    }
} else {
    die("Invalid request");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Customer</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Update Customer</h1>

    <div class="container">
        <form method="post" action="update.php?id=<?php echo $id; ?>">
            <label for="firstname">FirstName:</label><br>
            <input type="text" id="firstname" name="firstname" value="<?php echo $row['FirstName']; ?>" required><br>

            <label for="lastname">LastName:</label><br>
            <input type="text" id="lastname" name="lastname" value="<?php echo $row['LastName']; ?>" required><br> 

            <label for="email">Email:</label><br>
            <input type="text" id="email" name="email" value="<?php echo $row['Email']; ?>" required><br>

            <label for="address">Address:</label><br>
            <input type="text" id="address" name="address" value="<?php echo $row['Address']; ?>" required><br>

            <label for="city">City:</label><br>
            <input type="text" id="city" name="city" value="<?php echo $row['City']; ?>" required><br>

            <label for="phone">Phone:</label><br>
            <input type="number" id="phone" name="phone" value="<?php echo $row['Phone']; ?>" required><br>

            <label for="birthdate">Birthdate:</label><br>
            <input type="date" id="birthday" name="birthday" value="<?php echo $row['Birthday']; ?>" required><br>

            <label for="favoriteDish">Favorite Dish:</label><br>
            <input type="text" id="favoriteDish" name="favoriteDish" value="<?php echo $row['FavoriteDish']; ?>"><br>

            <label for="password">New Password:</label><br>
            <input type="password" id="password" name="password"><br><br>

            <input type="submit" value="Update Customer">
        </form>
    </div>
</body>
</html>
