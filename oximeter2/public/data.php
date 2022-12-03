<!DOCTYPE html>
<html><body>
<?php


$servername = "localhost";

$dbname = "oximeter2";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, bpm, o2, time_up FROM dataup ORDER BY id DESC";

echo '<table cellspacing="5" cellpadding="5">
      <tr> 
        <td>ID</td> 
        <td>Beats Per Minute(BPM)</td>
        <td>Oxygen Level(O2)</td> 
        <td>Timestamp</td> 
      </tr>';
 
if ($result = $conn->query($sql)) {

    while ($row = $result->fetch_assoc()) {
        $row_id = $row["id"];
        $row_bpm = $row["bpm"]; 
        $row_o2 = $row["o2"]; 
        $row_time = $row["time_up"];

        echo '<tr> 
        <td>' . $row_id . '</td>
                <td>' . $row_bpm . '</td>
                <td>' . $row_o2 . '</td> 
                <td>' . $row_time . '</td> 
              </tr>';
    }
    $result->free();
} 
else {
  echo("Error description: " . $conn -> error);
}

$conn->close();
?> 
</table>
</body>
</html>