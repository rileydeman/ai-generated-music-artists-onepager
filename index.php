<?php
require 'includes/db.php';
require 'includes/spotify.php';

$artistInfo = null;
$suggestions = [];

if (isset($_POST['artist'])) {
    $artist = $_POST['artist'];
    $stmt = $pdo->prepare("SELECT * FROM artists WHERE name LIKE ?");
    $stmt->execute(["%$artist%"]);
    $artistInfo = $stmt->fetch(PDO::FETCH_ASSOC);

    // If we have a matching artist, fetch details from Spotify
    if ($artistInfo) {
        // Get the Spotify details using the spotify_id
        $spotifyDetails = getArtistDetails($artistInfo['spotify_id']);
        if (isset($spotifyDetails['images']) && count($spotifyDetails['images']) > 0) {
            $artistInfo['image_url'] = $spotifyDetails['images'][0]['url']; // Get the first image
        } else {
            $artistInfo['image_url'] = null; // No image available
        }
    }
}

if (isset($_GET['query'])) {
    $query = $_GET['query'];
    $spotifyResults = searchArtists($query);
    $suggestions = $spotifyResults['artists']['items'];
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
        <input type="text" id="artist-input" name="artist" placeholder="Search for an artist..." autocomplete="off">
        <button type="submit">Search</button>
        <ul id="suggestions"></ul>
    </form>

    <div class="artist-info">
        <?php if ($artistInfo): ?>
            <h2><?php echo htmlspecialchars($artistInfo['name']); ?></h2>
            <p><strong>Genre:</strong> <?php echo htmlspecialchars($artistInfo['genre']); ?></p>
            <p><?php echo htmlspecialchars($artistInfo['bio']); ?></p>
            <?php if (isset($artistInfo['image_url'])): ?>
                <img src="<?php echo htmlspecialchars($artistInfo['image_url']); ?>" alt="Artist image" />
            <?php endif; ?>
            <p><a href="https://open.spotify.com/artist/<?php echo htmlspecialchars($artistInfo['spotify_id']); ?>" target="_blank">Listen on Spotify</a></p>
        <?php else: ?>
            <p>No artist found. Try searching for another artist.</p>
        <?php endif; ?>
    </div>
    <button id="toggle-mode">Toggle Light/Dark Mode</button>
</div>

<script src="assets/js/script.js"></script>
</body>
</html>
