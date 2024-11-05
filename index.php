<?php
// index.php
require 'includes/db.php';

$artistInfo = null;
if (isset($_POST['artist'])) {
    $artist = $_POST['artist'];
    $stmt = $pdo->prepare("SELECT * FROM artists WHERE name LIKE ?");
    $stmt->execute(["%$artist%"]);
    $artistInfo = $stmt->fetch(PDO::FETCH_ASSOC);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyberpunk Music Artist Search</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
<div class="container">
    <h1>Music Artist Database</h1>
    <form method="POST" action="">
        <input type="text" name="artist" placeholder="Search for an artist...">
        <button type="submit">Search</button>
    </form>

    <div class="artist-info">
        <?php if ($artistInfo): ?>
            <h2><?php echo htmlspecialchars($artistInfo['name']); ?></h2>
            <p><strong>Genre:</strong> <?php echo htmlspecialchars($artistInfo['genre']); ?></p>
            <p><?php echo htmlspecialchars($artistInfo['bio']); ?></p>
            <img src="<?php echo htmlspecialchars($artistInfo['image_url']); ?>" alt="Artist image">
        <?php else: ?>
            <p>No artist found. Try searching for another artist.</p>
        <?php endif; ?>
    </div>
    <button id="toggle-mode">Toggle Light/Dark Mode</button>
</div>

<script src="assets/js/script.js"></script>
</body>
</html>
