<?php
// includes/spotify.php

// Load configuration
$config = parse_ini_file($_SERVER["DOCUMENT_ROOT"] . '/config.ini');

// Retrieve Spotify credentials from config
$clientId = $config['client_id'];
$clientSecret = $config['client_secret'];

function getSpotifyAccessToken() {
    global $clientId, $clientSecret;

    $url = "https://accounts.spotify.com/api/token";
    $headers = [
        'Authorization: Basic ' . base64_encode($clientId . ':' . $clientSecret),
        'Content-Type: application/x-www-form-urlencoded',
    ];
    $data = [
        'grant_type' => 'client_credentials'
    ];

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    curl_close($ch);

    $json = json_decode($response, true);
    return $json['access_token'];
}

function searchArtists($query) {
    $accessToken = getSpotifyAccessToken();
    $url = "https://api.spotify.com/v1/search?q=" . urlencode($query) . "&type=artist";

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer $accessToken"
    ]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    curl_close($ch);

    return json_decode($response, true);
}

function getArtistDetails($artistId) {
    $accessToken = getSpotifyAccessToken();
    $url = "https://api.spotify.com/v1/artists/" . $artistId;

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer $accessToken"
    ]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    curl_close($ch);

    return json_decode($response, true);
}
?>
